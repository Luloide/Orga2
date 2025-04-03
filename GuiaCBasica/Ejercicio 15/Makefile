CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = factorial
all: $(TARGET)

factorial: factorial.o
		$(CC) $(CFLAGS) factorial.o -o factorial

factorial.o: factorial.c
		$(CC) $(CFLAGS) -c factorial.c -o factorial.o

clean:
		rm *.o factorial

.PHONY: all clean
