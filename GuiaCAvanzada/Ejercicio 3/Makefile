CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = snipet
all: $(TARGET)

snipet: snipet.o
		$(CC) $(CFLAGS) snipet.o -o snipet

snipet.o: snipet.c
		$(CC) $(CFLAGS) -c snipet.c -o snipet.o

clean:
		rm *.o snipet

.PHONY: all clean