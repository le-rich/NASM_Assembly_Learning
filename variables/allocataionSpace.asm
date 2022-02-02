; Reserve directives used for reserving space for unitialized data.

;RESB Reserve byte
;RESW Reserve a word (2B)
;RESD Reserve a double word (4B)
;RESQ	Reserve a Quad Word (8B)
;REST Reserve Ten Bytes


;Multiple Initializations

section .data
stars times 9 DB '*'			;Declares a byte 9 times with '*' default value.


section .text
	global _start

_start:
	mov edx, 9		;messagef length
	mov ecx, stars	;message to wrtie
	mov ebx, 1			;file descriptor (stdout)
	mov eax, 4			;sys_write
	int 0x80

	mov eax, 1
	mov 0x80



