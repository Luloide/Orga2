CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = hola
all: $(TARGET)

hola: hola.o
		$(CC) $(CFLAGS) hola.o -o hola

hola.o: hola.c
		$(CC) $(CFLAGS) -c hola.c -o hola.o

clean:
		rm *.o hola

.PHONY: all clean