CC=gcc
CFLAGS=-g -Wall
DEPS = Hello.h
OBJ = Main.o Hello.o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

Main: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
