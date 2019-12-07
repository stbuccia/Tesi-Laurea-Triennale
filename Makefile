NAME = tesi
all:
	#pandoc --template frontespizio_new.tex --self-contained $(NAME).md -o $(NAME).tex
	#pandoc  --pdf-engine=xelatex $(NAME).tex -o $(NAME).pdf
	#pandoc -f markdown-raw_tex --to latex --template frontespizio_new.tex  #--out $(NAME).pdf --pdf-engine xelatex $(NAME).md
	pandoc --self-contained --filter=pandoc-citeproc copertina.md $(NAME).md -o $(NAME).pdf -H header.tex -V fontsize=12pt -V geometry=a4paper -V documentclass=report 
	#-V number-subsections=true
