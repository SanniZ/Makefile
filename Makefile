
CC = gcc
CFLAGS = -Wall -O

OUT = out
TARGET = $(OUT)/main
OUT_OBJS = $(OUT)/objs

SRC = $(wildcard src/*.c)

OBJS = $(patsubst %.c, %.o, $(SRC))

$(TARGET): $(OBJS)
	@$(shell mkdir $(OUT))
	@$(shell mkdir $(OUT_OBJS))
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)
	
	chmod a+x $(TARGET)

clean:
	rm -rf $(OBJS) $(OUT)	
