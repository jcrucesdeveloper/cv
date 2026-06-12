PDF = cv.pdf
SRC = cv.tex

.PHONY: all clean open

all: $(PDF)

$(PDF): $(SRC)
	xelatex $(SRC)
	xelatex $(SRC)   # second pass for any refs

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk

open: $(PDF)
	open $(PDF)
