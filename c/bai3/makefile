CC = gcc
all: main
main: main.o fun1.o fun2.o fun3.o 
	$(CC) -o main main.o fun1.o fun2.o fun3.o
main.o: main.c
	$(CC) -c main.c
fun1.o: fun1.c
	$(CC) -c fun1.c
fun2.o: fun2.c
	$(CC) -c fun2.c
fun3.o: fun1.c
	$(CC) -c fun3.c
clean:
	 rm -f *.o main
