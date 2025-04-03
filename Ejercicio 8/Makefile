CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = ej8
all: $(TARGET)

ej8: ej8.o
		$(CC) $(CFLAGS) ej8.o -o ej8

ej8.o: ej8.c
		$(CC) $(CFLAGS) -c ej8.c -o ej8.o

clean:
		rm *.o ej8

.PHONY: all clean
