PROGRAM=adder
CSRC=adder.c
YACCSRC=adder.y
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
