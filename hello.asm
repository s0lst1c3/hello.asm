; Filename: hello.asm
; Author: s0lst1c3
; Description: writes "Hello world!" on the screen using only system calls.

global _start

section .data
	
	align 2
	hello: db 'Hello world!', 0xa
	helloLen: equ $-hello

section .bss

section .text

	_start:

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, hello
	mov edx, helloLen
	int 0x80

	mov eax, 0x1
	xor ebx, ebx
	int 0x80
