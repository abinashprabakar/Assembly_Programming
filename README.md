# Assembly_Programming
This repository contains assembly language programs.

To compile and run assembly language programs in ubuntu20.04, install nasm in ubuntu
```
sudo apt-get install nasm 
```

<b> NASM <b> : 

		Netwide Assembler(NASM), an assembler for the x86 CPU architecture portable to nearly every modern
		platform, and with code generation for many platforms old and new.  It can be used to write 16-bit,
		32-bit (IA-32) and 64-bit (x86-64) programs. NASM is considered to be one of the most popular
		assemblers for Linux.

To compile:

		nasm -f elf64 -o filename.o filename.asm
		ld filename.o -o filename

To run:		

		./filename
