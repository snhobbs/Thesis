#!/bin/bash
pdflatex thesis
sleep 2
biber thesis
sleep 2
makeglossaries thesis
sleep 2
pdflatex thesis
sleep 5
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.9 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=smallThesis.pdf thesis.pdf

