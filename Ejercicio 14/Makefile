CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = variables
all: $(TARGET)

variables: variables.o
		$(CC) $(CFLAGS) variables.o -o variables

variables.o: variables.c
		$(CC) $(CFLAGS) -c variables.c -o variables.o

clean:
		rm *.o variables

.PHONY: all clean
