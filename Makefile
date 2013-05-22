.PHONY: doc all clean pack

PROJEKT=kostra

all: doc

doc: $(PROJEKT).tex
	pdflatex --file-line-error-style $(PROJEKT).tex && \
	pdflatex --file-line-error-style $(PROJEKT).tex && \
	pdflatex --file-line-error-style $(PROJEKT).tex

clean:
	rm -rf $(PROJEKT).dvi $(PROJEKT).pdf $(PROJEKT).out $(PROJEKT).log $(PROJEKT).aux $(PROJEKT).toc

pack: all
	tar -cf $(PROJEKT).pdf $(PROJEKT).tex Makefile

