# Build the book with latexmk (XeLaTeX, settings in .latexmkrc). Output goes to build/.
#   build/reader.pdf            inner block
#   build/cover.pdf             cover page only (for separate cover stock)
#   build/Read-to-Remember.pdf  cover + blank back + inner block
all: build/Read-to-Remember.pdf

build/reader.pdf: reader.tex reader.sty chapters/*.tex
	latexmk reader.tex

build/coverpair.pdf: coverpair.tex reader.sty chapters/cover.tex
	latexmk coverpair.tex

build/Read-to-Remember.pdf: build/coverpair.pdf build/reader.pdf
	pdfseparate -f 1 -l 1 build/coverpair.pdf build/cover.pdf
	pdfunite build/coverpair.pdf build/reader.pdf $@

clean:
	rm -rf build

.PHONY: all clean
