default: ert630.pdf

%.pdf: %.tex bibliography.bib *.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

ZIPFILES = \
	Makefile \
	ACM-Reference-Format.bst \
	acmart.cls \
	abstract.tex \
	acknowledgements.tex \
	bibliography.bib \
	body.tex \
	ccsxml.tex \
	context.tex \
	course-design.tex \
	ert630.tex \
	introduction.tex \
	keywords.tex \
	outcomes.tex \
	recommendations.tex \
	war-stories.tex 

ert630.zip: $(ZIPFILES)
	rm -f $@
	zip $@ $(ZIPFILES)
