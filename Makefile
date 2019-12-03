NAME = tesi
all:
	pandoc --self-contained --toc $(NAME).md -o $(NAME).pdf -H header.tex -V documentclass=report -V number-subsections=true
