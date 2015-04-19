CC=gcc
CFLAGS= -Wall -g -c -o
OBJECTS = main.o src/sort.o
TARGETS = csd201

all: $(TARGETS)

sort/sort.o:
	$(CC) $(CFLAGS) sort.o src/sort.c

main.o: sort.o
	$(CC) $(CFLAGS) main.o src/main.c

csd201: $(OBJECTS)
	$(CC) -o csd201 $(OBJECTS)

clean:
	rm -f *.o
	rm csd201