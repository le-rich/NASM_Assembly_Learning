section .text
	global _start	;must be declared for linker (gcc)


	;DATA REGISTERS EAX -> EDX


_start:					;linker entry point
	mov edx,len		;get the length variable and place it in the data register EDX
	mov ecx,msg		;get the msg data variable and plce it in the data register ECX	
	mov ebx,1			;file descriptor (stdout) - not sure what this is.
	mov eax,4			;system call number (sys_write) - also not sure, should be calling something to write.
	int 0x80			;call kernel

	mov edx,9			;message length again in EDX
	mov ecx,s2		;messaage to write again in EDX
	mov ebx,1			;file descriptor (stdout) - probably type of message/ operation
	mov eax,4		;system call number (sys_write)
	int 0x80			;call kernel


	mov eax,1			;system call number (sys_exit)
	int 0x80			;call kernel



section .data
	msg db 'Displaying 9 Stars',0xa ;Title Message
	len equ $- msg	;length of message (need to investigate syntax here)
	s2 times 9 db '*'	
