CC=gcc
OBJS= singly_linked_list.o singly_linked_list_test.o

.PHONY: main
main: $(OBJS)
	$(CC) -o main $^

.PHONY: test
test: main
	./main

.c.o:
	$(CC) -c $<

.PHONY: crean
clean:
	rm main $(OBJS)
