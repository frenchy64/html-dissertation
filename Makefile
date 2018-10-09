all:
	pdflatex thesis.tex 
	bibtex thesis
	pdflatex thesis.tex 
	bibtex thesis
	pdflatex thesis.tex 

fast:
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

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lod
