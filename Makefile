SOURCE=lullaby-for-austin
LILYPOND=/Applications/LilyPond.app/Contents/Resources/bin/lilypond
.PHONY: all clean

all: $(SOURCE).pdf

$(SOURCE).pdf: $(SOURCE).ly by-sa.eps
	$(LILYPOND) -dno-point-and-click $(SOURCE).ly

by-sa.eps:
	wget https://mirrors.creativecommons.org/presskit/buttons/88x31/eps/by-sa.eps

clean:
	rm -f *.pdf *.midi *.eps
