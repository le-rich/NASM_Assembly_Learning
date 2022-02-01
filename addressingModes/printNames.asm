section .data

name db 'Richard' ; db stands for data byte




section .text
	global _start

_start:

	; Write the Name Richard :)
	mov edx, 7			;Write the length 7 into data register EDX
	mov ecx, name		;Move name into data registers
	mov ebx, 1			;file descriptor STDOUT
	mov eax, 4			;System call number sys_write
	int 0x80				; Instruction causes a software interrupt and invokes the system call in eax

	mov [name], dword 'John' ; Replaces the first 4 characters with John
																	; You could replace it with a smaller string but it would print out 7 characters (replaces n <= 7 letters)

	; Write the name again

	mov edx, 7			; Message length
	mov ecx, name		; Write name to ecx register
	mov ebx, 1			; file descriptor, STDOUT
	mov eax, 4			; sys_write
	int 0x80				; call kernel execute interrupt

	mov eax, 1			; sys_exit
	int 0x80				;call kernel execute interrupte




