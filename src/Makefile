OUT := main

CC := gcc

SRC := main.c \
       k_thread.c

OBJS := $(SRC: %.c=%.o)

all:
	$(CC) -o $(OUT) $(OBJS)

clean:
	rm -rf $(OUT)

