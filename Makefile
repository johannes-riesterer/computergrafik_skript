
all: pdf clean

pdf: computergrafik.tex
	pdflatex -src -interaction=nonstopmode computergrafik.tex
	-makeindex -s nomencl.ist -t computergrafik.nlg -o computergrafik.nls computergrafik.nlo
	pdflatex -src -interaction=nonstopmode computergrafik.tex

.PHONY: clean
clean:
	rm -f *.aux *.bbl *.blg *.brf *.idx *.lof *.log *.lot *.nlg *.nlo *.nls *.out *.synctex.gz *.toc
