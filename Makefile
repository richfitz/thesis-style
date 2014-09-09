all: thesis.pdf

thesis.pdf: *.tex *.bib
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis

tidy:
	rm -f *.aux *.log *.bbl *.blg

clean: tidy
	rm -f thesis.pdf
