#!/bin/bash
mkdir -p ~/tessdata
BASE_URL="https://github.com/tesseract-ocr/tessdata_best/raw/main"
LANGS=("nld" "jpn" "chi_tra" "chi_tra_vert" "jpn_vert")
echo "Downloading Tesseract language data to ~/tessdata ..."
for lang in "${LANGS[@]}"; do
  echo "→ Downloading ${lang}.traineddata ..."
  wget -q -O ~/tessdata/${lang}.traineddata ${BASE_URL}/${lang}.traineddata
done
echo "✅ All language files downloaded successfully!"
echo "Files saved in: ~/tessdata"
