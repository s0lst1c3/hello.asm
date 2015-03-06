; Filename: hello.asm
; Author: s0lst1c3
; Description: writes "Hello world!" on the screen using only system calls.

section .text

	global _start

_start:

	; system_call(arg, arg, arg) <----> eax(edi, esi, edx)
	; write(1, message, 13)
	mov eax, 0x1
	mov edi, 0x1 ; 0x1 for stdout
	mov esi, message
	mov edx, 0xd
	int 0x80

	; exit(0)
	mov eax, 0x3c
	mov edi, 0x0
	int 0x80


message:
	db "Hello world!", 0xa

