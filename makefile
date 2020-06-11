
SHELL = /bin/sh

all: ascent.pdf

#ascent.pdf: *.tex *.bib *.inc images/*.png
ascent.pdf: *.tex *.bib
	export TEXINPUTS=./newtx/:$TEXINPUTS
	pdflatex chapter
	pdflatex chapter
	bibtex chapter
	touch chapter.tex
	pdflatex chapter
	pdflatex chapter


clean:
	if (rm -f *.log *.aux *.bbl *.blg *.toc *.dvi *.ps *.brf *.lbl *.gz chapter.pdf) then :; fi

