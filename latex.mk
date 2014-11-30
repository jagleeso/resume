####################################################################################################
# Latex stuff.
####################################################################################################

resume: resume.pdf
.PHONY: resume

LATEX_FLAGS = -interaction nonstopmode 

resume.pdf: resume.tex
	rm -f resume.aux resume.bbl
	latex $(LATEX_FLAGS) resume.tex
	# bibtex resume
	latex $(LATEX_FLAGS) resume.tex
	latex $(LATEX_FLAGS) resume.tex
	dvips -o resume.ps resume.dvi
	ps2pdf resume.ps
