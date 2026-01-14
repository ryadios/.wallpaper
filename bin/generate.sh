#!/bin/bash
set -e

OUT="README.md"
ASSETS_DIR="assets"

cat > "$OUT" <<'EOF'
<div align="center">
<table>
<tbody>
<td align="center">
<img width="2000" height="0"><br>

A curated, version-controlled collection of high-quality wallpapers sourced from [Wallhaven](https://wallhaven.cc)<br>
If you liked the repo, give a star ⭐

![GitHub repo size](https://img.shields.io/github/repo-size/ryadios/.wallpaper)
![GitHub stars](https://img.shields.io/github/stars/ryadios/.wallpaper)
![GitHub release](https://img.shields.io/github/v/release/ryadios/.wallpaper)
![GitHub last commit](https://img.shields.io/github/last-commit/ryadios/.wallpaper)

<img width="3000" height="0">
</td>
</tbody>
</table>
</div>

> [!IMPORTANT]
> All these wallpapers come from different sources like Wallhaven, Reddit and GitHub.  
> If you are the creator of any image, contact me and I will give you credit.

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

cat >> "$OUT" <<'EOF'
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true">
</p>
EOF
