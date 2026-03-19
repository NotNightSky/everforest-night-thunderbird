#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
OUTPUT_DIR="$(dirname "$SCRIPT_DIR")"
OUTPUT_FILE="$OUTPUT_DIR/everforest-night-thunderbird.xpi"

cd "$OUTPUT_DIR/src"
rm -f "$OUTPUT_FILE"
zip -r "$OUTPUT_FILE" manifest.json icons/ background.js content.css chrome.css
echo "Packaged: $OUTPUT_FILE"
