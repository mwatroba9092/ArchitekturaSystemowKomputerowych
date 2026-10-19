section .data
    tekst db `Hello \r Wordl`, 10
    ; dlugosc equ $ - tekst

section .text
    global _start

_start:
    mov rax, 1 
    mov rdi, 1
    mov rsi, tekst
    mov rdx, 10
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
