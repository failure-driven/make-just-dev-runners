CC = gcc
CFLAGS = -Wall -Wextra -std=c11
TARGET = hello_world

all: $(TARGET)

$(TARGET): hello_world.c
	$(CC) $(CFLAGS) -o $(TARGET) hello_world.c

clean:
	rm -f $(TARGET)