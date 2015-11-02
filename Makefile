DOKUMENT = pixel-wise-street-segmentation
make:
	pdflatex -shell-escape $(DOKUMENT).tex -interaction=batchmode -output-format=pdf # aux-files for makeindex / makeglossaries
	makeglossaries $(DOKUMENT)
	bibtex $(DOKUMENT)
	pdflatex -shell-escape $(DOKUMENT).tex -interaction=batchmode -output-format=pdf # include index
	pdflatex -shell-escape $(DOKUMENT).tex -interaction=batchmode -output-format=pdf # include symbol table
	pdflatex -shell-escape $(DOKUMENT).tex -interaction=batchmode -output-format=pdf # include symbol table
	make clean

clean:
	rm -rf $(TARGET) *.class *.html *.log *.aux *.out *.thm *.idx *.toc *.ilg *.glg *.glo *.gls *.ist *.xdy *.fdb_latexmk *.bak *.blg *.glsdefs *.acn *.acr *.alg *.nls *.nlo *.bak *.pyg *.lot *.lof *.xmpdata *.xmpi
	# rm -rf *.bbl *.ind  # Needed for arxiv
