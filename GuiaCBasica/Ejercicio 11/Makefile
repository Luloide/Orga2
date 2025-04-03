CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = rotar
all: $(TARGET)

rotar: rotar.o
		$(CC) $(CFLAGS) rotar.o -o rotar

rotar.o: rotar.c
		$(CC) $(CFLAGS) -c rotar.c -o rotar.o

clean:
		rm *.o rotar

.PHONY: all clean
