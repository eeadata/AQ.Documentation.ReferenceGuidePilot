#!/bin/bash
set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"
DOCS="$ROOT/docs"
OUT="$ROOT/AQ_Reference_PDF_test_v3.pdf"
COMBINED="$DOCS/_pdf_test_v3.html"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

if [ ! -d "$DOCS" ]; then
  echo "ERROR: docs/ folder not found next to this script."
  exit 1
fi
if [ ! -x "$CHROME" ]; then
  echo "ERROR: Google Chrome not found at the expected location."
  exit 1
fi

# Important: v3 deliberately starts from the successful v1 method.
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

pages = [
    ("index.html", "landing", "Landing page"),
    ("diagram.html", "diagram", "Diagram"),
    ("tables/Authority.html", "authority", "Authority"),
    ("tables/AssessmentRegimeZone.html", "assessmentregimezone", "AssessmentRegimeZone"),
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
    # docs/_pdf_test_v3.html rather than in docs/tables/*.html.
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
    @page { size: A4 portrait; margin: 12mm; }
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
      max-width: 100% !important;
    }

    /* Keep the original table algorithm and typography.  Only wide tables get
       a modest reduction and permission to wrap at sensible points. */
    .wy-table-responsive table {
      font-size: 82% !important;
    }
    .wy-table-responsive th,
    .wy-table-responsive td {
      white-space: normal !important;
      overflow-wrap: break-word !important;
      word-break: normal !important;
      hyphens: none !important;
      padding-left: 5px !important;
      padding-right: 5px !important;
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
</style>
'''

html = (
    '<!DOCTYPE html><html><head>'
    + head.group(1)
    + extra_css
    + '</head><body><div class="pdf-shell">'
    + "\n".join(sections)
    + '</div></body></html>'
)
out.write_text(html, encoding="utf-8")
print("Created temporary combined HTML:", out)
PY

echo
echo "Creating v3 four-page PDF test with Chrome..."
"$CHROME" \
  --headless \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$OUT" \
  "file://$COMBINED"

echo
echo "SUCCESS"
echo "PDF created at:"
echo "$OUT"
echo
echo "v3 keeps the v1 rendering method and adds only:"
echo "  - internal links between included pages"
echo "  - conservative wide-table wrapping"
echo "  - hard page breaks between source pages"
echo "  - removal of Chrome's print header/footer"
echo
echo "The guide source files were not modified."
