REPORT=proposal
LATEX=pdflatex
DVIPS=dvips
PS2PDF=ps2pdf
ACROREAD=open
BIBTEX=bibtex
RMTEX=rm -f *.dvi *.aux *.log *.blg *.bbl *.ps

SRCS=$(wildcard *.tex)

all: $(REPORT).pdf

$(REPORT).pdf: $(SRCS)
	$(LATEX) $(REPORT)
	$(BIBTEX) $(REPORT)
	$(LATEX) $(REPORT)
	$(LATEX) $(REPORT)

pdf: $(REPORT).pdf

clean:
	$(RMTEX)
