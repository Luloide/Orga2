CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = mensaje
all: $(TARGET)

mensaje: mensaje.o
		$(CC) $(CFLAGS) mensaje.o -o mensaje

mensaje.o: mensaje.c
		$(CC) $(CFLAGS) -c mensaje.c -o mensaje.o

clean:
		rm *.o mensaje

.PHONY: all clean
