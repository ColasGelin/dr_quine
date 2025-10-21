section .text
global _start
extern _printf, fopen, fprintf, fclose

%define FILENAME "Grace_kid.s"
%define STRING "/* Comment One */%csection .text%cglobal _start%cextern _printf, fopen, fprintf, fclose%c%c%define FILENAME %cGrace_kid.s%c%c%define STRING %c%s%c%c"
%define EXEC "    lea rdi, [s]%ccall _printf%c    ret%c"

_start:
    ; Print the source code
    EXEC
    ret

section .data
s:
    db STRING, 0