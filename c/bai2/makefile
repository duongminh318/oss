# Makefile cho HelloWord
CC=gcc
all: main
main: main.o proc.o
	$(CC) -o main main.o proc.o
main.o: main.c
	$(CC) -c main.c
proc.o: proc.c
	$(CC) -c proc.c
clean:
	rm -f *.o main
