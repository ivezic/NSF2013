REPORT=proposal
LATEX=latex
DVIPS=dvips
PS2PDF=ps2pdf
ACROREAD=open
BIBTEX=bibtex
RMTEX=rm -f *.dvi *.aux *.log *.blg *.bbl *.ps

SRCS=$(wildcard *.tex)

all: $(REPORT).pdf

$(REPORT).pdf: $(SRCS)
	$(LATEX) $(REPORT)
	$(DVIPS) $(REPORT).dvi -o $(REPORT).ps
	$(PS2PDF) $(REPORT).ps $(REPORT).pdf
	$(ACROREAD) $(REPORT).pdf &
	$(RMTEX)

pdf: $(REPORT).pdf

