 proyecto.pdf: presentacion.tex 
	pdflatex presentacion.tex
	pdflatex presentacion.tex
	pdflatex presentacion.tex

bibliografia: *aux
	bibtex presentacion.aux

final: *tex *aux
	bibtex presentacion.aux
	pdflatex presentacion.tex
	pdflatex presentacion.tex

verpdf: *pdf
	evince presentacion.pdf&

git:
	git add -A
	git commit -m "comiteado"
	git push origin master