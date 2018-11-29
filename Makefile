default: ert360.pdf

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
	ert360.tex \
	introduction.tex \
	keywords.tex \
	outcomes.tex \
	recommendations.tex \
	war-stories.tex 

ert360.zip: $(ZIPFILES)
	rm -f $@
	zip $@ $(ZIPFILES)
