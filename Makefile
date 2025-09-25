manuscript 	= vr-notes
references 	= $(wildcard *.bib)
latexopt 		= -file-line-error -halt-on-error

all: $(manuscript).tex $(references)
	pdflatex $(latexopt) $(manuscript).tex
	biber $(manuscript)
	pdflatex $(latexopt) $(manuscript).tex
	pdflatex $(latexopt) $(manuscript).tex

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.glo *.ist *.log *.out *.run.xml *.toc