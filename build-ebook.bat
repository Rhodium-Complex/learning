@echo off
echo [100book]
echo Building 100book.pdf into src directory...
docker run --rm -v %cd%/src:/work vvakame/review:3.1 /bin/sh -c "cd /work && sh md2review.sh && review-pdfmaker config-ebook.yml"
pause
