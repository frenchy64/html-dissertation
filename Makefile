all:
	latexmk thesis.tex -pdf

html-fast:
	make4ht -um draft thesis.tex -c html-config.cfg

html:
	# svg generation https://tex.stackexchange.com/a/399458
	make4ht -um draft thesis.tex -c html-config.cfg
	biber thesis
	make4ht -u thesis.tex -c html-config.cfg "svg"

mathjax:
	# https://tex.stackexchange.com/a/68962
	make4ht -u thesis.tex -c mathjax.cfg "svg"

fast:
	pdflatex thesis.tex 

fast2:
	pdflatex thesis.tex 
	pdflatex thesis.tex 

sym:
	pdflatex symb.tex 
	bibtex symb
	pdflatex symb.tex 
	bibtex symb
	pdflatex symb.tex 

proposal:
	pdflatex proposal.tex 
	bibtex proposal
	pdflatex proposal.tex 
	bibtex proposal
	pdflatex proposal.tex 

prospectus:
	pdflatex prospectus.tex 
	bibtex prospectus
	pdflatex prospectus.tex 
	bibtex prospectus
	pdflatex prospectus.tex 

pldi:
	pdflatex pldi19.tex 
	bibtex pldi19
	pdflatex pldi19.tex 
	bibtex pldi19
	pdflatex pldi19.tex 

fast-pldi:
	pdflatex pldi19.tex 

oopsla:
	pdflatex oopsla19.tex 
	bibtex oopsla19
	pdflatex oopsla19.tex 
	bibtex oopsla19
	pdflatex oopsla19.tex 

fast-oopsla:
	pdflatex oopsla19.tex 

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lod *.loe *-blx.bib *.run.xml
