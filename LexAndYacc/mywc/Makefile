PROGRAM=mywc
CSRC=mywc.c
LEXSRC=mywc.l
CC=clang
LEX=flex

$(PROGRAM): $(CSRC)
	$(CC) -o $@ $^

$(CSRC): $(LEXSRC)
	$(LEX) -o $@ $^

.PHONY: clean

clean:
	rm $(PROGRAM) $(CSRC)
