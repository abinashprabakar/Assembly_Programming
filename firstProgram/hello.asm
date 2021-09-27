section .data
    msg db "Hello world!",10    ; 10 is the ASCII code for a new line (LF)

section .text			;section declaration
    global _start		;for exporting symbols in code to where it points in the object code generated

_start:
    mov rax, 1			;store value 1 to rax to make a call to the operating system
    mov rdi, 1			;store value 1 to rdi, where 1 stands for STDOUT (write to console)
    mov rsi, msg		;msg string is stored in rsi, rsi on 64 bit processor only have 64bit each 
    mov rdx, 13			;setting the value of rdx to the number of bytes/character to print
    syscall			;default way of entering kernel mode on x86_64
    				;int 0x80 is other way of entering kernel mode
   
    mov rax, 60			;system call for exit
    mov rdi, 0
    syscall
