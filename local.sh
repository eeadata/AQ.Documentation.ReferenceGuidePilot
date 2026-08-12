#!/bin/bash

set -Eeuo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="$SCRIPT_DIR/build/html"

cd "$SCRIPT_DIR"

echo "Building local AQ eReference Guide..."

rm -rf -- "$BUILD_DIR"

python3 -m sphinx \
    --keep-going \
    -E \
    -a \
    -b html \
    source \
    build/html

echo "Build completed successfully."

if command -v open >/dev/null 2>&1; then
    open "$BUILD_DIR/index.html"
fi

echo "Done!"
