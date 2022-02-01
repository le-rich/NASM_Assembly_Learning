section .data
	prompt db 'Please enter a number: '  ; User prompt
	lenPrompt equ $-prompt
	dspMsg db 'You have entered '
	lenDspMsg equ $-dspMsg


section .bss			;Uninitialized data
	num resb 5

section .text			;Code Segment
	global _start

_start:
	mov eax, 4				;System Write
	mov ebx, 1				;STDOUT
	mov ecx, prompt
	mov edx, lenPrompt
	int 80h

	; Read and store the user input
	mov eax, 3			;System read
	mov ebx, 2			;STDIN
	mov ecx, num		
	mov edx, 5			;5 bytes of information (numeric, 1 for sign) of that information
	int 80h

	;Output the message 'The entered number is: '
	mov eax, 4
	mov ebx, 1
	mov ecx, dspMsg
	mov edx, lenDspMsg
	int 80h

	;Output the number entered
	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 5
	int 80h

	; Exit code
	mov eax, 1 ;System Exit
	mov ebx, 0
	int 80h
