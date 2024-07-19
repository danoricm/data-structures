; linked_list.asm
section .data
    arr db 1, 2, 3, 4, 5
    msg db "Array elements are: ", 0
    format db "%d ", 0

section .bss

section .text
    extern printf
    global _start

_start:
    ; print the message
    mov rdi, msg
    call printf

    ; print array elements
    mov rcx, 5 ; number of elements
    mov rsi, arr
print_loop:
    lodsb
    movzx rdi, al
    mov rdi, format
    mov rsi, rax
    call printf
    loop print_loop

    ; exit
    mov rax, 60
    xor rdi, rdi
    syscall
