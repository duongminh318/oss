CC = gcc
OBJ = fun1.o fun2.o fun3.o
SRCS = fun1.c fun2.c fun3.c main.c 
INC =  -I/home/user/apps/zlib/include
LIB = -lz -L/home/user/apps/zlib/lib

all: main
# The variable $@ has the value of the target. 
# In this case $@ = psort
main: main.o ${OBJ}
	${CC} ${LIB} ${INC} -o $@ main.o ${OBJ} ${LIB}

.c.o:
	${CC} ${LIB} ${INC} -c $<

depend: 
	makedepend ${SRCS}

clean:
	rm -f *.o main *~ 
