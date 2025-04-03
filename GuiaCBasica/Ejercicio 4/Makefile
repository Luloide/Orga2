CC = gcc
CFLAGS = -Wall -Wextra -pedantic
TARGET = sizesAnchoFijo
all: $(TARGET)

sizesAnchoFijo: sizesAnchoFijo.o
		$(CC) $(CFLAGS) sizesAnchoFijo.o -o sizesAnchoFijo

sizesAnchoFijo.o: sizesAnchoFijo.c
		$(CC) $(CFLAGS) -c sizesAnchoFijo.c -o sizesAnchoFijo.o

clean:
		rm *.o sizesAnchoFijo

.PHONY: all clean
