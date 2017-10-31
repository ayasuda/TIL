PROGRAM=howto
LEXSRC=howto.l
LOUT=lex.yy.c
YACCSRC=howto.y
YOUT=y.tab.c
CC=clang
LEX=flex
YACC=bison

$(PROGRAM): $(LOUT) $(YOUT)
	$(CC) -o $@ $^

$(LOUT): $(LEXSRC)
	$(LEX) -o $@ $^

$(YOUT): $(YACCSRC)
	$(YACC) -o $@ -d $^

.PHONY: run

run: $(PROGRAM)
	./$(PROGRAM)

.PHONY: clean

clean:
	rm $(PROGRAM) $(YOUT) $(LOUT) y.tab.h
