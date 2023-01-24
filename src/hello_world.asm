; hello_world.asm
;
; Author: Mark Heramis
; Date: 25-Jan-2022
global _start

section .text:

_start:
    ; -------------------------------------------------------------
    ; Display 'HELLO WORLD!' to the console.
    ; -------------------------------------------------------------
    ; NOTE1: to find the list of syscalls, you can install mlocate
    ; and use it to locate the unistd_32.h
    ; once located, you can show the content of the file
    ; to see the available syscalls you can make.
    ; NOTE2: you can use man command to see the parameters for the
    ; write syscall
    ; ex: `man write`
    mov eax, 0x4            ; use the write syscall
    mov ecx, 1              ; use stdout as the file descriptor
    mov ecx, message        ; use the message as the buffer
    mov edx, message_length ; supply the length
    int 0x80                ; invoke the syscall

    ; implement graceful shutdown
    mov eax, 0x1            ; use the exit syscall
    mov ebx, 0              ; return 0
    int 0x80                ; invoke the syscall
section .data:
    ; 0xA is a new line character (\n)
    message: db "Hello World!", 0xA
    ; Assign the length of the message
    ; dynamically to message length
    message_length: equ $-message