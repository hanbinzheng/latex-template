./clean.sh
rm -rf main.pdf
killall Skim
xelatex main.tex
xelatex main.tex
xelatex main.tex
xelatex main.tex
open main.pdf

