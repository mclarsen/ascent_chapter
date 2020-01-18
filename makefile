
SHELL = /bin/sh

all: ascent.pdf

#ascent.pdf: *.tex *.bib *.inc images/*.png
ascent.pdf: *.tex *.bib
	export TEXINPUTS=./newtx/:$TEXINPUTS
	pdflatex book
	pdflatex book
	bibtex book
	touch book.tex
	pdflatex book
	pdflatex book


clean:
	if (rm -f *.log *.aux *.bbl *.blg *.toc *.dvi *.ps *.brf *.lbl *.gz book.pdf) then :; fi

