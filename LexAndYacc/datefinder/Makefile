PROGRAM=minimal
CSRC=y.tab.c
YACCSRC=minimal.y
CC=clang
YACC=bison

$(PROGRAM): $(CSRC)
	$(CC) -o $@ $^

$(CSRC): $(YACCSRC)
	$(YACC) -o $@ $^

.PHONY: clean

clean:
	rm $(PROGRAM) $(CSRC)

.PHONY: run

run: $(PROGRAM)
	./$(PROGRAM)
