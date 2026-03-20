#!/usr/bin/env bash
set -euo pipefail
OUT_DIR="CSS_advanced/images"
mkdir -p "$OUT_DIR"

download(){
  url="$1"
  out="$2"
  echo "Downloading $out ..."
  curl -fL --retry 3 --retry-delay 2 -o "$out" "$url"
  ls -lh "$out"
}

download "https://source.unsplash.com/random/2000x1333/?branding,design,about" "$OUT_DIR/pic-about-01.jpg"
download "https://source.unsplash.com/random/2000x1333/?office,desk,laptop,work" "$OUT_DIR/pic-work-01.jpg"
download "https://source.unsplash.com/random/2000x1333/?team,meeting,office,work" "$OUT_DIR/pic-work-02.jpg"
download "https://source.unsplash.com/random/2000x1333/?coworking,workspace,developer,work" "$OUT_DIR/pic-work-03.jpg"
download "https://source.unsplash.com/random/2000x1333/?writing,notebook,article,blog" "$OUT_DIR/pic-article-01.jpg"
download "https://source.unsplash.com/random/2000x1333/?reading,newspaper,article" "$OUT_DIR/pic-article-02.jpg"
download "https://source.unsplash.com/random/2000x1333/?typing,keyboard,writing,article" "$OUT_DIR/pic-article-03.jpg"
download "https://source.unsplash.com/random/2000x1333/?portrait,person,headshot" "$OUT_DIR/pic-person-01.jpg"
download "https://source.unsplash.com/random/2000x1333/?portrait,woman,headshot" "$OUT_DIR/pic-person-02.jpg"
download "https://source.unsplash.com/random/2000x1333/?portrait,man,headshot" "$OUT_DIR/pic-person-03.jpg"

echo "All done"
