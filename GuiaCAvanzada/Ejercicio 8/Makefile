CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = Ej8
all: $(TARGET)

Ej8: Ej8.o
		$(CC) $(CFLAGS) Ej8.o -o Ej8

Ej8.o: Ej8.c
		$(CC) $(CFLAGS) -c Ej8.c -o Ej8.o

clean:
		rm *.o Ej8

.PHONY: all clean