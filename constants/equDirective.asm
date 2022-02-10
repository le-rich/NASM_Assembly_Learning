SYS_EXIT equ 1
SYS_WRITE equ 4
STDIN	equ 0
STDOUT equ 1

section .text
	global _start

_start:
	mov eax, SYS_WRITE ;Instruction Register SYS_WRITE
	mov ebx, STDOUT		 ;Data Register to STDOUT
	mov ecx, msg1
	mov edx, len1

	mov eax, SYS_EXIT
	int 0x80

section .data
msg1 db 'Learning constants',0xA,0xD
len1 equ $ - msg1


