DOC=cheatsheet
TEXCC=rubber -d

tex_files:=$(shell find . -iname '*.tex')

#%.pdf: %.tex
#	 $(TEXCC) $<

$(DOC).pdf: $(tex_files)
	$(TEXCC) $(DOC).tex

all: $(DOC).pdf $(tex_files)

clean:
	rubber --clean $(DOC).tex
