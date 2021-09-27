section .data 
	message db "Hello",10	;print message Hello
	len equ $ - message	;length of the message

section .text			;section declaration
	global _start		;for exporting symbols in code to where it points in the object code generated

_start:
	mov rax,1		;store 1 to register rax because to make a call to the operating system
	mov rdi,1		;stores 1 to rdi, where 1 stands for STDOUT (write to console)
	mov rsi,message		;message is stored in rsi, rsi on a 64bit processor only have 64 bit each
	mov rdx,14		;setting the value of rdx to the number of bytes/character to print
	int 0x80		;to invoke a system call

	mov rax,60		;system call for exit
	mov rdi,0
	syscall			;default way of entering kernel mode on x86-64
