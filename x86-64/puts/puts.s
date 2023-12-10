.intel_syntax noprefix

.text
.globl main
main:
sub rsp, 8
lea rdi, msg[rip]
call puts
add rsp, 8
xor rax, rax
ret

.section .rodata
msg:
.string "hello"
