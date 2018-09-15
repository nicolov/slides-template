PANDOC_OPTS=-t beamer --pdf-engine=xelatex
THEME_OPTS=-V theme:metropolis -V themeoptions:subsectionpage=progressbar

slides.pdf: SLIDES.md
	pandoc $(PANDOC_OPTS) $(THEME_OPTS) $< -o $@

.PHONY: clean
clean:
	rm slides.pdf
