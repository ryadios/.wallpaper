#!/bin/bash
set -e

OUT="README.md"
ASSETS_DIR="assets"

cat > "$OUT" <<EOF
# Wallpapers

## Preview

<p align="center">
EOF

find "$ASSETS_DIR" -type f \( \
  -iname "*.png" -o \
  -iname "*.jpg" -o \
  -iname "*.jpeg" -o \
  -iname "*.webp" \
\) | sort | while read -r img; do
  printf '  <img src="%s" width="300">\n' "$img" >> "$OUT"
done

cat >> "$OUT" <<EOF
</p>
EOF
