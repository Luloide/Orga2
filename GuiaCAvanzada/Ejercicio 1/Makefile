CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = Ej1
all: $(TARGET)

Ej1: Ej1.o
		$(CC) $(CFLAGS) Ej1.o -o Ej1

Ej1.o: Ej1.c
		$(CC) $(CFLAGS) -c Ej1.c -o Ej1.o

clean:
		rm *.o Ej1

.PHONY: all clean