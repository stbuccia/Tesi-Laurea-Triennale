NAME = tesi
TMP = tmp
RING = ringraziamenti
all:
	pandoc --self-contained --filter=pandoc-citeproc copertina.md $(NAME).md -o $(NAME).pdf -H header.tex -V fontsize=12pt -V classoption=twoside -V classoption=openright -V geometry=a4paper -V documentclass=report --pdf-engine=xelatex 
	# pandoc --self-contained $(RING).md -o $(RING).pdf -H header.tex -V fontsize=12pt -V geometry=a4paper -V documentclass=report 
	# pdfunite $(TMP).pdf $(RING).pdf $(NAME).pdf
	# rm $(TMP).pdf
