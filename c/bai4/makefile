CFLAGS = -g -Wall
CC = gcc
OBJ = fun1.o fun2.o fun3.o
SRCS = fun1.c fun2.c fun3.c main.c 
INC =  fun1.h fun2.h fun3.h
all: main

# The variable $@ has the value of the target. 
# In this case $@ = psort
main: main.o ${OBJ}
	${CC} ${CFLAGS} ${INC} -o $@ main.o ${OBJ} 

.c.o:
	${CC} ${CFLAGS} ${INC} -c $<

depend: 
	makedepend ${SRCS}

clean:
	rm -f *.o main *~
