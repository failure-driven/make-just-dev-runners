CC = gcc
CFLAGS = -Wall -Wextra -std=c11
TARGET = hello_world
OBJS = hello_world.o message.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJS)
