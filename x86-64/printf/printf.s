.intel_syntax noprefix

.text
.globl main
main:
sub rsp, 8
lea rdi, fmt[rip]
mov rsi, 2
mov rdx, 3
mov rcx, 5
xor rax, rax
call printf
add rsp, 8
xor rax, rax
ret

.section .rodata
fmt:
.string "%d + %d = %d\n"
