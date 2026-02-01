CC ?= cc
CFLAGS ?= -O2 -std=gnu89
CC_CFLAGS = $(CFLAGS) -x c

%.o: %.c
	$(CC) $(CC_CFLAGS) -c -o $@ $<

%.o: %.C
	$(CC) $(CC_CFLAGS) -c -o $@ $<

OBJS = ALINK.o COMBINE.o UTIL.o OUTPUT.o OBJLOAD.o COFF.o COFFLIB.o

all: alink.exe

$(OBJS): ALINK.H

alink.exe: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^
