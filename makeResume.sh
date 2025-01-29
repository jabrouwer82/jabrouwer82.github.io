#! /bin/bash

month=$(date +%B)
year=$(date +%Y)
chromium \
   --headless \
   --disable-gpu \
   --run-all-compositor-stages-before-draw \
   --no-pdf-header-footer \
   --print-to-pdf="pdf/JacobBrouwerResume$year$month.pdf" \
   index.html
