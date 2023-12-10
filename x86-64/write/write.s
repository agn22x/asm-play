.intel_syntax noprefix

.text
.globl _start
_start:
mov rax, 1
mov rdi, 1
lea rsi, msg
mov rdx, 6
syscall
mov rax, 60
xor rdi, rdi
syscall

.section .rodata
msg:
.ascii "hello\n"
