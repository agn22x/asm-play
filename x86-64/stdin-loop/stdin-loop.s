    .intel_syntax noprefix

    .text
    .globl main
main:
    endbr64
    push rbp
    mov rbp, rsp
    sub rsp, 16
    mov QWORD PTR -16[rbp], rsi
    mov DWORD PTR -8[rbp], edi
    mov esi, DWORD PTR -8[rbp]
    lea rdi, fmt1[rip]
    xor rax, rax
    call printf
    mov rbx, QWORD PTR -16[rbp] #stores the double char pointer
    mov r12d, DWORD PTR -8[rbp] #stores the argc
    xor r13, r13 #counter and double pointer index
.A:
    lea rax, [rbx + r13*8]
    mov rdx, QWORD PTR [rax]
    mov esi, r13d
    lea rdi, fmt2[rip]
    xor rax, rax
    call printf
    add r13d, 1
    cmp r13d, r12d
    jne .A
    add rsp, 16
    pop rbp
    ret

    .section .rodata
fmt1:
    .string "arg cnt: %d\n"
fmt2:
    .string "arg %d: %s\n"
