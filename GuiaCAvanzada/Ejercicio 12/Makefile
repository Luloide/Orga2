CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = Ej12
all: $(TARGET)

Ej12: Ej12.o
		$(CC) $(CFLAGS) Ej12.o -o Ej12

Ej12.o: Ej12.c
		$(CC) $(CFLAGS) -c Ej12.c -o Ej12.o

clean:
		rm *.o Ej12

.PHONY: all clean