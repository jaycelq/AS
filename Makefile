
all: boot.bin maximum.bin

boot.bin: boot.o
	ld --oformat binary --Ttext 0x7c00 -o boot.bin boot.o

boot.o: boot.S
	as -c -o boot.o boot.S

maximum.bin: maximum.o
	ld -o maximum.bin maximum.o

maximum.o: maximum.S
	as -c -o maximum.o maximum.S

clean:
	rm *.o *.bin
