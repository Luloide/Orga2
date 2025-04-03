CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = casteo
all: $(TARGET)

casteo: casteo.o
		$(CC) $(CFLAGS) casteo.o -o casteo

casteo.o: casteo.c
		$(CC) $(CFLAGS) -c casteo.c -o casteo.o

clean:
		rm *.o casteo

.PHONY: all clean
