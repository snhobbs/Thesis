#!/bin/bash
pdflatex thesis
sleep 2
biber thesis
sleep 2
makeglossaries thesis
sleep 2
pdflatex thesis
sleep 2
biber thesis
sleep 2
makeglossaries thesis
sleep 2
pdflatex thesis
sleep 5
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.9 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=smallThesis.pdf thesis.pdf

rm *.out
rm *.log
rm *.alg
rm *.acr
rm *.acn
rm *.blg
rm *.nav
rm *.bbl
rm *.toc
rm *.xdy
rm *.sym
rm *.sbl
rm *.run.xml
rm *.aux
rm *.lof
rm *.gls
rm *.glg
rm *.glo
rm *.dvi
rm *.bcf
rm *.lot
rm *.slg

mv smallThesis.pdf ..
mv thesis.pdf ..
