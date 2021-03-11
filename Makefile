CC=gcc
EXE=main

main.o.gtk-2:
	$(CC) `pkg-config --cflags gtk+-2.0` -o $(EXE) main.c `pkg-config --libs gtk+-2.0`

main.o.gtk-3:
	$(CC) `pkg-config --cflags gtk+-3.0` -o $(EXE) main.c `pkg-config --libs gtk+-3.0`


run:
	./$(EXE)

clear:
	rm *.o
	rm $(EXE)

