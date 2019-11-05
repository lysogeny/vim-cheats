DOC=cheatsheet
TEXCC=rubber -d

%.pdf: %.tex
	 $(TEXCC) $<

all: $(DOC).pdf

clean:
	rubber --clean $(DOC).tex
