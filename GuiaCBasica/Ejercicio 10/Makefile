CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = whilePorFor
all: $(TARGET)

whilePorFor: whilePorFor.o
		$(CC) $(CFLAGS) whilePorFor.o -o whilePorFor

whilePorFor.o: whilePorFor.c
		$(CC) $(CFLAGS) -c whilePorFor.c -o whilePorFor.o

clean:
		rm *.o whilePorFor

.PHONY: all clean
