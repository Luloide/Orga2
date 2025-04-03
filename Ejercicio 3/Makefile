CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = sizes
all: $(TARGET)

sizes: sizes.o
		$(CC) $(CFLAGS) sizes.o -o sizes

sizes.o: sizes.c
		$(CC) $(CFLAGS) -c sizes.c -o sizes.o

clean:
		rm *.o sizes

.PHONY: all clean
