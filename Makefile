
CC = gcc
CFLAGS = -Wall -O


OUT = out
TARGET = $(OUT)/main
OUT_OBJS = $(OUT)/objs

SRC = src
INCLUDES = includes

C_FILES = $(wildcard $(SRC)/*.c)

OBJS = $(patsubst %.c, %.o, $(C_FILES))

all: main objs

main: $(OBJS)
	@$(shell mkdir $(OUT))
	@$(shell mkdir $(OUT_OBJS))
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)	
	chmod a+x $(TARGET)

objs:
	$(shell mkdir $(OUT_OBJS)/$(dir $(OBJS)))
	$(shell mv $(dir $(OBJS))/*.o $(OUT_OBJS)/$(dir $(OBJS))/)

clean:
	rm -rf $(OUT)
