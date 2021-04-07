all: compile clean

restart:
	rm -f thesis.pdf

compile: restart
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex

clean: restart
	rm -f *.bbl *.log *.lot *.toc *.out *.blg *.aux *.txt
