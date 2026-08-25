#!/bin/bash
set -e

CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
OUT="$PWD/AQ_Reference_PDF_test_v2.pdf"
TMP="$PWD/docs/_pdf_test_v2.html"

python3.13 - <<'PY'
from pathlib import Path
from bs4 import BeautifulSoup
from urllib.parse import urlparse

root = Path.cwd()
docs = root / "docs"
pages = [
    ("index.html", "landing"),
    ("diagram.html", "diagram"),
    ("tables/Authority.html", "authority"),
    ("tables/AssessmentRegimeZone.html", "assessmentregimezone"),
]

# Build mapping from original HTML page paths to internal PDF anchors.
page_to_anchor = {p: f"pdf-page-{anchor}" for p, anchor in pages}

parts = []
for i, (rel, anchor) in enumerate(pages):
    path = docs / rel
    html = path.read_text(encoding="utf-8")
    soup = BeautifulSoup(html, "html.parser")

    # Sphinx RTD content lives in the main role. Fallback to body if necessary.
    main = soup.find("div", attrs={"role": "main"}) or soup.find("main") or soup.body
    if main is None:
        raise RuntimeError(f"Could not find main content in {rel}")

    # Remove navigation/edit elements that should not be printed.
    for sel in [
        "div.rst-footer-buttons",
        "div[role='navigation']",
        "nav",
        ".wy-breadcrumbs-aside",
    ]:
        for el in main.select(sel):
            el.decompose()

    # Resolve relative image/style-like URLs inside the extracted content.
    base = Path(rel).parent
    for tag, attr in [("img", "src")]:
        for el in main.find_all(tag):
            val = el.get(attr)
            if not val or val.startswith(("http://", "https://", "data:", "file:", "#")):
                continue
            target = (docs / base / val).resolve()
            el[attr] = target.as_uri()

    # Rewrite links to included pages as internal document links.
    for a in main.find_all("a", href=True):
        href = a["href"]
        if href.startswith(("http://", "https://", "mailto:", "#")):
            continue
        parsed = urlparse(href)
        target_path = (base / parsed.path).as_posix()
        # normalize ./ and ../
        target_norm = Path(target_path).as_posix()
        try:
            target_norm = (Path(rel).parent / parsed.path).resolve().relative_to(Path.cwd().resolve()).as_posix()
        except Exception:
            target_norm = str((base / parsed.path))
        # easier normalization relative to docs
        target_abs = (docs / base / parsed.path).resolve()
        try:
            target_rel = target_abs.relative_to(docs.resolve()).as_posix()
        except Exception:
            continue
        if target_rel in page_to_anchor:
            anchor_id = page_to_anchor[target_rel]
            if parsed.fragment:
                # Prefix imported fragment ids to avoid collisions between pages.
                a["href"] = f"#{anchor_id}-{parsed.fragment}"
            else:
                a["href"] = f"#{anchor_id}"

    # Prefix ids inside imported page, so fragment links can be made unique.
    prefix = page_to_anchor[rel]
    for el in main.find_all(id=True):
        old = el["id"]
        el["id"] = f"{prefix}-{old}"
    # Fix local same-page fragment links after id prefixing.
    for a in main.find_all("a", href=True):
        href = a["href"]
        if href.startswith("#") and not href.startswith(f"#{prefix}-") and href != f"#{prefix}":
            frag = href[1:]
            if frag:
                a["href"] = f"#{prefix}-{frag}"

    section_class = "pdf-source-page"
    if i > 0:
        section_class += " pdf-page-break"
    parts.append(f'<section id="{prefix}" class="{section_class}">{main.decode_contents()}</section>')

css = r'''
@page {
  size: A4 portrait;
  margin: 13mm 11mm 15mm 11mm;
}
html, body {
  width: auto !important;
  max-width: none !important;
}
body {
  margin: 0 !important;
  padding: 0 !important;
  font-size: 10.5pt;
  line-height: 1.42;
}
.pdf-source-page {
  width: 100%;
  max-width: 100%;
  box-sizing: border-box;
}
.pdf-page-break {
  break-before: page;
  page-break-before: always;
}
/* Keep content within the printable width. */
img, svg {
  max-width: 100% !important;
  height: auto !important;
}
table {
  width: 100% !important;
  max-width: 100% !important;
  table-layout: fixed !important;
  font-size: 8.2pt !important;
  border-collapse: collapse;
}
th, td {
  min-width: 0 !important;
  max-width: none !important;
  white-space: normal !important;
  overflow-wrap: anywhere !important;
  word-break: normal !important;
  hyphens: auto;
  padding: 3px 4px !important;
  vertical-align: top;
}
pre, code {
  white-space: pre-wrap !important;
  overflow-wrap: anywhere !important;
  word-break: break-word !important;
  max-width: 100% !important;
}
p, li, dd {
  overflow-wrap: anywhere;
}
/* Avoid awkward heading separation. */
h1, h2, h3, h4 {
  break-after: avoid-page;
  page-break-after: avoid;
}
/* Hide browser-oriented crumbs/controls if any survived extraction. */
.wy-breadcrumbs, .rst-footer-buttons, .wy-nav-side, .wy-nav-top, .wy-side-nav-search {
  display: none !important;
}
'''

# Reuse the existing site CSS so the PDF retains the guide's visual identity.
css_links = []
index_soup = BeautifulSoup((docs / "index.html").read_text(encoding="utf-8"), "html.parser")
for link in index_soup.find_all("link", rel=lambda x: x and "stylesheet" in x):
    href = link.get("href")
    if not href or href.startswith(("http://", "https://")):
        continue
    css_path = (docs / href).resolve()
    if css_path.exists():
        css_links.append(f'<link rel="stylesheet" href="{css_path.as_uri()}">')

out = f'''<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>AQ eReference Guide — PDF test</title>
{''.join(css_links)}
<style>{css}</style>
</head>
<body>
{''.join(parts)}
</body>
</html>'''
(docs / "_pdf_test_v2.html").write_text(out, encoding="utf-8")
print("Created", docs / "_pdf_test_v2.html")
PY

"$CHROME" \
  --headless \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$OUT" \
  "file://$TMP"

echo
echo "PDF created:"
echo "$OUT"
