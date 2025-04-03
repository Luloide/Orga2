CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = comp
all: $(TARGET)

comp: comp.o
		$(CC) $(CFLAGS) comp.o -o comp

comp.o: comp.c
		$(CC) $(CFLAGS) -c comp.c -o comp.o

clean:
		rm *.o comp

.PHONY: all clean
