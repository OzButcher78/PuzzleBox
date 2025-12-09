CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -std=gnu99
LDFLAGS ?=
LDLIBS ?= -lm
TARGET ?= puzzlebox

all: $(TARGET)

$(TARGET): puzzlebox.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $< $(LDLIBS)

clean:
	rm -f $(TARGET)

.PHONY: all clean
