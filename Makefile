NAME = tesi
all:
	pandoc --self-contained $(NAME).md -o $(NAME).tex
	pandoc  --pdf-engine=xelatex $(NAME).tex -o $(NAME).pdf
