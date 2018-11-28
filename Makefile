default: ert360.pdf

%.pdf: %.tex %.bib *.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*
