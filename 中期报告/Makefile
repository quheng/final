main:
	xelatex main.tex
	bibtex data/zhongqi.aux
	mv data/zhongqi.bbl main.bbl
	xelatex main.tex
	xelatex main.tex

clean:
	git clean -dfX
