section .text
global _start
extern _printf  ; Declare _printf as an external function

; Comment One
p:
    sub rsp, 8
    mov rsi, 34
    lea rdx, [s]
    mov rcx, 34
    xor rax, rax
    call _printf
    add rsp, 8
    ret

_start:
    ; Comment two
    lea rdi, [s]
    call p
    ret

section .data
s:
    db ".section .text", 10, "global _start", 10, "; Comment One", 10, "p:", 10, "    sub rsp, 8", 10, "    mov rsi, 34", 10, "    lea rdx, [s]", 10, "    mov rcx, 34", 10, "    xor rax, rax", 10, "    call _printf", 10, "    add rsp, 8", 10, "    ret", 10, "_start:", 10, "    ; Comment two", 10, "    lea rdi, [s]", 10, "    call p", 10, "    ret", 10, "section .data", 10, "s:", 10, "    db %c%s%c", 0