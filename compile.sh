#!/bin/sh
nasm -f elf32 -o hello.o hello.asm
ld -m elf_i386 -o hello hello.o
