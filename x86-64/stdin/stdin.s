.intel_syntax noprefix

.text
.globl main
main:
sub rsp, 8
mov r8, 16[rsi]
mov rcx, 8[rsi]
mov rdx, [rsi]
mov rsi, rdi
lea rdi, fmt[rip]
xor rax, rax
call printf
add rsp, 8
xor rax, rax
ret

.section .rodata
fmt:
.string "arg cnt: %d, 1st arg: %s, 2nd arg: %s, 3rd arg: %s\n"
