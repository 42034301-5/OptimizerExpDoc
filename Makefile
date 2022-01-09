main:main.tex main.bbl main.blg
	xelatex main
	xelatex main

main.bbl:main.tex main.aux references.bib
	bibtex main

main.aux:main.tex
	xelatex main

.PHONY: clean

clean:
	rm -f main.aux main.bbl main.blg main.log main.out main.pdf