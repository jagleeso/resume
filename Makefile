####################################################################################################
# Latex stuff.
####################################################################################################

# resume: resume.pdf
# .PHONY: resume
# 
# LATEX_FLAGS = -interaction nonstopmode 
# 
# resume.pdf: resume.tex
# 	rm -f resume.aux resume.bbl
# 	latex $(LATEX_FLAGS) resume.tex
# 	# bibtex resume
# 	latex $(LATEX_FLAGS) resume.tex
# 	latex $(LATEX_FLAGS) resume.tex
# 	dvips -o resume.ps resume.dvi
# 	ps2pdf resume.ps

# http://vim.wikia.com/wiki/Compiling_LaTeX_from_Vim

.PHONY: clean all

all: one_page.pdf resume.pdf

%.pdf: %.tex $(DEPENDS) Makefile references.bib
	rubber -f --pdf -s --clean $<
	rubber -f --pdf -s $<
	rubber-info --check $<

clean:
	rm -rf *.aux *.bbl *.blg *.log *.pdf *.toc *.snm *.out *.nav tags
