all:
	pdflatex proposal.tex 
	bibtex proposal
	pdflatex proposal.tex 
	bibtex proposal
	pdflatex proposal.tex 
