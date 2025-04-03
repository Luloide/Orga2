CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = operaciones
all: $(TARGET)

operaciones: operaciones.o
		$(CC) $(CFLAGS) operaciones.o -o operaciones

operaciones.o: operaciones.c
		$(CC) $(CFLAGS) -c operaciones.c -o operaciones.o

clean:
		rm *.o operaciones

.PHONY: all clean
