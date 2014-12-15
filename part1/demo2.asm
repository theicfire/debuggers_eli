section .data
    msg1 db      "hello,", 10
    len1 equ $ - msg1
    msg2 db      "world from assembly!", 10
    len2 equ $ - msg2
 
section .text
    global _start
_start:
    ; Message 1
    mov     rdx, len1
    mov     rcx, msg1
    mov     rbx, 1
    mov     rax, 4
    int     0x80
    ; Message 2
    mov     rdx, len2
    mov     rcx, msg2
    mov     rbx, 1
    mov     rax, 4
    int     0x80
    ; Exit, I think
    mov    rax, 60
    mov    rdi, 0
    syscall
