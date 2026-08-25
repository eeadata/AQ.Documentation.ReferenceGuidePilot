#!/bin/bash
set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"
DOCS="$ROOT/docs"
OUT="$ROOT/AQ_Reference_PDF_test.pdf"
COMBINED="$DOCS/_pdf_test.html"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

if [ ! -d "$DOCS" ]; then
  echo "ERROR: docs/ folder not found next to this script."
  exit 1
fi
if [ ! -x "$CHROME" ]; then
  echo "ERROR: Google Chrome not found at the expected location."
  exit 1
fi

python3 - "$DOCS" "$COMBINED" <<'PY'
from pathlib import Path
import re, sys

docs = Path(sys.argv[1])
out = Path(sys.argv[2])
pages = [
    ("index.html", "Landing page"),
    ("diagram.html", "Diagram"),
    ("tables/Authority.html", "Authority"),
    ("tables/AssessmentRegimeZone.html", "AssessmentRegimeZone"),
]

missing = [p for p, _ in pages if not (docs / p).exists()]
if missing:
    raise SystemExit("ERROR: Missing HTML page(s): " + ", ".join(missing))

first = (docs / pages[0][0]).read_text(encoding="utf-8")
head = re.search(r"<head\b[^>]*>(.*?)</head>", first, re.I | re.S)
if not head:
    raise SystemExit("ERROR: Could not read the HTML <head> from docs/index.html")

sections = []
for rel, label in pages:
    text = (docs / rel).read_text(encoding="utf-8")
    m = re.search(r'<div\s+role="main"\s+class="document"[^>]*>(.*?)\n\s*</div>\s*</div>\s*</div>', text, re.I | re.S)
    if not m:
        # More tolerant fallback: from role=main to the standard RTD footer/navigation marker.
        m = re.search(r'<div\s+role="main"\s+class="document"[^>]*>(.*?)(?=<footer|<div\s+class="rst-footer-buttons")', text, re.I | re.S)
    if not m:
        raise SystemExit(f"ERROR: Could not isolate main content in {rel}")
    body = m.group(1)
    if rel.startswith("tables/"):
        body = body.replace('src="../', 'src="').replace("src='../", "src='")
        body = body.replace('href="../', 'href="').replace("href='../", "href='")
    sections.append(f'<section class="pdf-page" data-source="{rel}">{body}</section>')

extra_css = r'''
<style>
  /* Test only: keep the site's own typography/content styling, but make pages printable. */
  body { background: white !important; }
  .pdf-shell { max-width: 1100px; margin: 0 auto; padding: 24px 38px; }
  .pdf-page { break-after: page; page-break-after: always; }
  .pdf-page:last-child { break-after: auto; page-break-after: auto; }
  @media print {
    @page { size: A4; margin: 12mm; }
    .pdf-shell { max-width: none; margin: 0; padding: 0; }
  }
</style>
'''
html = '<!DOCTYPE html><html><head>' + head.group(1) + extra_css + '</head><body><div class="pdf-shell">' + "\n".join(sections) + '</div></body></html>'
out.write_text(html, encoding="utf-8")
print("Created temporary combined HTML:", out)
PY

echo
echo "Creating four-page PDF test with Chrome..."
"$CHROME" \
  --headless \
  --disable-gpu \
  --print-to-pdf="$OUT" \
  "file://$COMBINED"

echo
echo "SUCCESS"
echo "PDF created at:"
echo "$OUT"
echo
echo "The guide source files were not modified."
