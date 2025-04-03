CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = mascara
all: $(TARGET)

mascara: mascara.o
		$(CC) $(CFLAGS) mascara.o -o mascara

mascara.o: mascara.c
		$(CC) $(CFLAGS) -c mascara.c -o mascara.o

clean:
		rm *.o mascara

.PHONY: all clean
