section .text
	global _start

_start:
	mov edx, 1			;Length
	mov ecx, choice ; Message to write
	mov ebx, 1			; STDOUT
	mov eax, 4			;sys_write
	int 0x80

	mov eax, 1			;sys_exit
	int 0x80				;interrupt handle sys call.







section .data
choice DB 'y'   ;Defines a byte y
