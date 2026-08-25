#!/bin/bash
set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"
DOCS="$ROOT/docs"
OUT="$ROOT/AQ_eReference_Guide.pdf"
COMBINED="$DOCS/_pdf_reference_guide.html"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

if [ ! -d "$DOCS" ]; then
  echo "ERROR: docs/ folder not found next to this script."
  exit 1
fi
if [ ! -x "$CHROME" ]; then
  echo "ERROR: Google Chrome not found at the expected location."
  exit 1
fi

# Important: v8 keeps the successful v1/v3 rendering method.
# It does NOT reconstruct the HTML with BeautifulSoup.  It keeps the original
# Sphinx/RTD head and content markup, then makes only small PDF-specific edits.
python3.13 - "$DOCS" "$COMBINED" <<'PY'
from pathlib import Path
from urllib.parse import urlsplit
import posixpath
import re
import sys

docs = Path(sys.argv[1])
out = Path(sys.argv[2])

# Include the real Tables index page as the first page of the tables section.
# Depending on the Sphinx source layout this is normally tables.html; the
# fallback keeps the script robust if a tables/index.html layout is used.
if (docs / "tables.html").exists():
    tables_index = "tables.html"
elif (docs / "tables/index.html").exists():
    tables_index = "tables/index.html"
else:
    raise SystemExit("ERROR: Could not find the built Tables index page (tables.html or tables/index.html).")

pages = [
    ("index.html", "landing", "Landing page"),
    ("diagram.html", "diagram", "Diagram"),
    (tables_index, "tables-index", "Tables"),
    ("tables/Authority.html", "authority", "Authority"),
    ("tables/MeasurementStation.html", "measurementstation", "MeasurementStation"),
    ("tables/SamplingPoint.html", "samplingpoint", "SamplingPoint"),
    ("tables/SamplingPointLocation.html", "samplingpointlocation", "SamplingPointLocation"),
    ("tables/SamplingProcess.html", "samplingprocess", "SamplingProcess"),
    ("tables/ModelObjectiveEstimation.html", "modelobjectiveestimation", "ModelObjectiveEstimation"),
    ("tables/ObservationMeasurementStatistics.html", "observationmeasurementstatistics", "ObservationMeasurementStatistics"),
    ("tables/ObservationMeasurementInventory.html", "observationmeasurementinventory", "ObservationMeasurementInventory"),
    ("tables/MOEResultGrid.html", "moeresultgrid", "MOEResultGrid"),
    ("tables/MOEResultInventory.html", "moeresultinventory", "MOEResultInventory"),
    ("tables/ZoneGeometry.html", "zonegeometry", "ZoneGeometry"),
    ("tables/ZoneGeometryGrid.html", "zonegeometrygrid", "ZoneGeometryGrid"),
    ("tables/AssessmentRegimeZone.html", "assessmentregimezone", "AssessmentRegimeZone"),
    ("tables/ComplianceAssessmentMethod.html", "complianceassessmentmethod", "ComplianceAssessmentMethod"),
    ("tables/SpatialRepresentativeness.html", "spatialrepresentativeness", "SpatialRepresentativeness"),
    ("tables/SRSGrid.html", "srsgrid", "SRSGrid"),
    ("tables/SRSInventory.html", "srsinventory", "SRSInventory"),
    ("tables/PollutionLevelAdjustment.html", "pollutionleveladjustment", "PollutionLevelAdjustment"),
    ("tables/CompliancePlanLink.html", "complianceplanlink", "CompliancePlanLink"),
    ("tables/Plan.html", "plan", "Plan"),
    ("tables/PlanScenario.html", "planscenario", "PlanScenario"),
    ("tables/SourceApportionment.html", "sourceapportionment", "SourceApportionment"),
    ("tables/ScenarioMeasure.html", "scenariomeasure", "ScenarioMeasure"),
    ("tables/Measure.html", "measure", "Measure"),
    ("tables/Documentation.html", "documentation", "Documentation"),
    ("tables/ObservationMeasurementResultPNSD.html", "observationmeasurementresultpnsd", "ObservationMeasurementResultPNSD"),
]

page_to_anchor = {rel: f"pdf-{anchor}" for rel, anchor, _ in pages}

missing = [rel for rel, _, _ in pages if not (docs / rel).exists()]
if missing:
    raise SystemExit("ERROR: Missing HTML page(s): " + ", ".join(missing))

# Keep the complete <head> from the original landing page.  This is the key
# to preserving exactly the styling that made v1 look so good.
first = (docs / "index.html").read_text(encoding="utf-8")
head = re.search(r"<head\b[^>]*>(.*?)</head>", first, re.I | re.S)
if not head:
    raise SystemExit("ERROR: Could not read the HTML <head> from docs/index.html")


def extract_main(text: str, rel: str) -> str:
    # Same extraction strategy as v1: preserve the site's original markup.
    m = re.search(
        r'<div\s+role="main"\s+class="document"[^>]*>(.*?)\n\s*</div>\s*</div>\s*</div>',
        text,
        re.I | re.S,
    )
    if not m:
        m = re.search(
            r'<div\s+role="main"\s+class="document"[^>]*>(.*?)(?=<footer|<div\s+class="rst-footer-buttons")',
            text,
            re.I | re.S,
        )
    if not m:
        raise SystemExit(f"ERROR: Could not isolate main content in {rel}")
    return m.group(1)


def normalize_target(current_rel: str, href_path: str):
    """Return target path relative to docs/, or None if it escapes docs/."""
    if not href_path:
        return current_rel
    base = posixpath.dirname(current_rel)
    norm = posixpath.normpath(posixpath.join(base, href_path))
    if norm == ".." or norm.startswith("../"):
        return None
    return norm


def rewrite_links(body: str, current_rel: str) -> str:
    """Rewrite links between included HTML pages to PDF-internal anchors.

    External URLs, mailto links, downloads and ordinary same-page fragments are
    left alone.  This intentionally avoids broad HTML rewriting.
    """
    href_re = re.compile(r'(?P<prefix>\bhref\s*=\s*)(?P<q>["\'])(?P<url>.*?)(?P=q)', re.I)

    def repl(m):
        url = m.group("url")
        low = url.lower()
        if low.startswith(("http://", "https://", "mailto:", "tel:", "javascript:", "data:")):
            return m.group(0)
        if url.startswith("#"):
            return m.group(0)

        parts = urlsplit(url)
        target = normalize_target(current_rel, parts.path)
        if target in page_to_anchor:
            # For this prototype, cross-page links go to the beginning of the
            # included source page.  This is reliable and avoids duplicate
            # Sphinx ids such as #attributes across several table pages.
            new_url = "#" + page_to_anchor[target]
            return f'{m.group("prefix")}{m.group("q")}{new_url}{m.group("q")}'
        return m.group(0)

    return href_re.sub(repl, body)


sections = []
for i, (rel, short, label) in enumerate(pages):
    text = (docs / rel).read_text(encoding="utf-8")
    body = extract_main(text, rel)

    # v1's small path correction, required because all content is now hosted in
    # docs/_pdf_test_v8.html rather than in docs/tables/*.html.
    if rel.startswith("tables/"):
        body = body.replace('src="../', 'src="').replace("src='../", "src='")
        body = body.replace('href="../', 'href="').replace("href='../", "href='")

    body = rewrite_links(body, rel)

    # A separate zero-height break marker is intentionally used rather than
    # relying on the section's own page-break property.  Chrome handles this
    # more reliably with the slightly irregular RTD-generated markup.
    if i:
        sections.append('<div class="pdf-hard-break" aria-hidden="true"></div>')
    sections.append(
        f'<a id="{page_to_anchor[rel]}" class="pdf-page-anchor"></a>'
        f'<section class="pdf-source-page" data-source="{rel}" data-label="{label}">{body}</section>'
    )

extra_css = r'''
<style>
  /* PDF-only additions.  Deliberately conservative: preserve the v1/RTD look. */
  body { background: white !important; }
  .pdf-shell { max-width: 1100px; margin: 0 auto; padding: 24px 38px; }
  .pdf-page-anchor { display: block; position: relative; }
  .pdf-hard-break {
    display: block;
    height: 0;
    break-before: page;
    page-break-before: always;
  }

  @media print {
    @page {
      size: A4 portrait;
      margin: 8mm 8mm 12mm 8mm;

      @bottom-center {
        content: counter(page);
        font-size: 8pt;
        color: #666;
      }
    }
    .pdf-shell { max-width: none; margin: 0; padding: 0; }

    /* The RTD theme normally puts wide tables in a horizontally scrolling
       wrapper.  Paper cannot scroll, so let the table use the printable width. */
    .wy-table-responsive {
      overflow: visible !important;
      max-width: 100% !important;
    }
    .wy-table-responsive table,
    table.docutils,
    table {
      width: 100% !important;
      max-width: 100% !important;
      min-width: 0 !important;
    }

    /* v3 was visually good but the final column could still fall beyond the
       printable edge.  Chromium's zoom scales the complete table as a unit,
       preserving the RTD proportions and avoiding ugly mid-word splitting. */
    /* Attribute overview tables: readable rather than microscopic.
       Eight columns fit on A4 by giving them sensible widths and only
       allowing the genuinely long text columns to wrap. */
    table.docutils {
      table-layout: fixed !important;
      width: 100% !important;
      max-width: 100% !important;
      font-size: 7.0pt !important;
      line-height: 1.12 !important;
      box-sizing: border-box !important;
    }
    table.docutils th,
    table.docutils td,
    table.docutils th p,
    table.docutils td p,
    table.docutils th a,
    table.docutils td a {
      font-size: 7.0pt !important;
      line-height: 1.12 !important;
    }
    table.docutils th,
    table.docutils td {
      box-sizing: border-box !important;
      min-width: 0 !important;
      padding: 2px 2.5px !important;
      vertical-align: top !important;
      word-break: normal !important;
      hyphens: none !important;
    }

    /* Widths tuned for the 8-column Reference attribute overview. */
    table.docutils th:nth-child(1), table.docutils td:nth-child(1) { width: 8% !important; }
    table.docutils th:nth-child(2), table.docutils td:nth-child(2) { width: 20% !important; }
    table.docutils th:nth-child(3), table.docutils td:nth-child(3) { width: 13% !important; }
    table.docutils th:nth-child(4), table.docutils td:nth-child(4) { width: 12% !important; }
    table.docutils th:nth-child(5), table.docutils td:nth-child(5) { width: 8% !important; }
    table.docutils th:nth-child(6), table.docutils td:nth-child(6) { width: 15% !important; }
    table.docutils th:nth-child(7), table.docutils td:nth-child(7) { width: 16% !important; }
    table.docutils th:nth-child(8), table.docutils td:nth-child(8) { width: 8% !important; }

    /* The compact table list below the diagram has ample room on the page,
       so make it more comfortable to read than the dense attribute tables. */
    .pdf-source-page[data-source="diagram.html"] table.docutils,
    .pdf-source-page[data-source="diagram.html"] table.docutils th,
    .pdf-source-page[data-source="diagram.html"] table.docutils td,
    .pdf-source-page[data-source="diagram.html"] table.docutils th p,
    .pdf-source-page[data-source="diagram.html"] table.docutils td p,
    .pdf-source-page[data-source="diagram.html"] table.docutils th a,
    .pdf-source-page[data-source="diagram.html"] table.docutils td a {
      font-size: 9pt !important;
      line-height: 1.25 !important;
    }

    /* Keep codes and short technical values intact. */
    table.docutils th:nth-child(1), table.docutils td:nth-child(1),
    table.docutils th:nth-child(3), table.docutils td:nth-child(3),
    table.docutils th:nth-child(4), table.docutils td:nth-child(4),
    table.docutils th:nth-child(5), table.docutils td:nth-child(5),
    table.docutils th:nth-child(8), table.docutils td:nth-child(8) {
      white-space: nowrap !important;
      overflow-wrap: normal !important;
    }
    /* Attribute names, code lists and related-table names may wrap when needed. */
    table.docutils th:nth-child(2), table.docutils td:nth-child(2),
    table.docutils th:nth-child(6), table.docutils td:nth-child(6),
    table.docutils th:nth-child(7), table.docutils td:nth-child(7) {
      white-space: normal !important;
      overflow-wrap: anywhere !important;
    }

    /* Preserve all card backgrounds in print (including Reference-only
       'Darth Vader' cards). */
    *, *::before, *::after {
      -webkit-print-color-adjust: exact !important;
      print-color-adjust: exact !important;
    }

    /* Force the Tables index cards to keep their on-screen appearance in PDF.
       We do this explicitly here because Chromium print can otherwise flatten
       link backgrounds/borders even though the normal RTD screen CSS is loaded. */
    .reporting-table-grid {
      display: grid !important;
      grid-template-columns: repeat(6, minmax(0, 1fr)) !important;
      gap: 8px !important;
      margin-top: 16px !important;
      margin-bottom: 20px !important;
    }
    a.reporting-table-card {
      display: flex !important;
      flex-direction: column !important;
      min-width: 0 !important;
      height: 150px !important;
      padding: 7px !important;
      overflow: hidden !important;
      color: #333333 !important;
      background: #ffffff !important;
      border: 1px solid #d4d4d4 !important;
      border-radius: 5px !important;
      text-align: center !important;
      text-decoration: none !important;
      box-shadow: none !important;
    }
    .reporting-table-title {
      min-height: 30px !important;
      margin-bottom: 4px !important;
      font-size: 8pt !important;
      font-weight: 600 !important;
      line-height: 1.12 !important;
    }
    .reporting-table-image {
      display: flex !important;
      flex: 1 !important;
      align-items: center !important;
      justify-content: center !important;
      width: 100% !important;
      min-height: 0 !important;
      overflow: hidden !important;
    }
    .reporting-table-image img {
      display: block !important;
      width: 100% !important;
      height: 95px !important;
      max-width: 100% !important;
      object-fit: contain !important;
      border: 0 !important;
    }

    /* Darth Vader cards: explicit print rules, not dependent on hover/screen CSS. */
    a.reporting-table-card.reference-only-table {
      background: #2b2f33 !important;
      border-color: #111417 !important;
      box-shadow: inset 0 0 0 1000px #2b2f33, 0 3px 8px rgba(0,0,0,.28) !important;
    }
    a.reporting-table-card.reference-only-table .reporting-table-title {
      color: #ffffff !important;
    }
    a.reporting-table-card.reference-only-table .reporting-table-image {
      background: #3a3f44 !important;
      box-shadow: inset 0 0 0 1000px #3a3f44 !important;
    }
    a.reporting-table-card.reference-only-table .reference-only-badge,
    .reference-only-badge {
      display: inline-block !important;
      align-self: center !important;
      margin: 2px 0 4px !important;
      padding: 2px 5px !important;
      color: #ffffff !important;
      background: #0d0f11 !important;
      box-shadow: inset 0 0 0 1000px #0d0f11 !important;
      border: 1px solid #686d72 !important;
      border-radius: 3px !important;
      font-size: 6.2pt !important;
      font-weight: 700 !important;
      letter-spacing: .05em !important;
      line-height: 1.1 !important;
    }

    /* Long URLs/code should wrap rather than disappear beyond the right edge. */
    pre, code {
      max-width: 100% !important;
      overflow-wrap: break-word !important;
    }

    img, svg {
      max-width: 100% !important;
      height: auto !important;
    }

    h1, h2, h3, h4 {
      break-after: avoid-page;
      page-break-after: avoid;
    }
  }

/* PDF table readability: centre every cell and wrap long content safely. */
table th,
table td {
    text-align: center !important;
    vertical-align: middle !important;
    white-space: normal !important;
    overflow-wrap: anywhere !important;
    word-break: break-word !important;
}

table th *,
table td * {
    white-space: normal !important;
    overflow-wrap: anywhere !important;
    word-break: break-word !important;
}

table th a,
table td a,
table th code,
table td code {
    white-space: normal !important;
    overflow-wrap: anywhere !important;
    word-break: break-word !important;
}

</style>
'''

html = (
    '<!DOCTYPE html><html><head>'
    + head.group(1)
    + extra_css
    + '</head><body><div class="pdf-shell rst-content">'
    + "\n".join(sections)
    + '</div></body></html>'
)
out.write_text(html, encoding="utf-8")
print("Created temporary combined HTML:", out)
PY

echo
echo "Creating v8 PDF test with Chrome..."
"$CHROME" \
  --headless \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$OUT" \
"$COMBINED" \
2>/dev/null
echo
echo "SUCCESS"
echo "PDF created at:"
echo "$OUT"
echo "The guide source files were not modified."