    .intel_syntax noprefix

    .text
    .globl main
main:
    sub rsp, 8
    xor r12d, r12d #Value to print
    jmp loop_check
loop_body:
    mov esi, r12d
    lea rax, fmt[rip]
    mov rdi, rax
    xor rax, rax
    call printf
    inc ebx
    inc r12d
loop_check:
    cmp ebx, 5
    jl loop_body
    add rsp, 8
    sub rsp, 8
    lea rax, done[rip]
    mov rdi, rax
    xor rax, rax
    call printf
    add rsp, 8
    xor rax, rax
    ret      

    .section .rodata
fmt:
    .string "%d\n"
done:
    .string "done\n"
