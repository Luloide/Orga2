CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = remplazo
all: $(TARGET)

remplazo: remplazo.o
		$(CC) $(CFLAGS) remplazo.o -o remplazo

remplazo.o: remplazo.c
		$(CC) $(CFLAGS) -c remplazo.c -o remplazo.o

clean:
		rm *.o remplazo

.PHONY: all clean