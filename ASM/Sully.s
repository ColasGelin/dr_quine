section .data
    filename_prefix: .asciz "Sully_"
    filename_suffix: .asciz ".s"
    file_content: .asciz "section .text\n\nglobal _start\n\n_start:\n    movl $5, int_value  # Initialize integer X to 5\n\nnext_file:\n    cmpl $0, int_value  # Check if X >= 0\n    jl end_program\n\n    movl $0, %eax\n    movl $1, %ebx\n    movl $filename_prefix, %ecx\n    call write_string\n\n    ; Convert int_value to string and append to filename\n\n    movl $filename_suffix, %ecx\n    call write_string\n\n    ; Write file content to Sully_X.s\n\n    ; Compile the new file\n\n    ; Run the new program\n\n    subl $1, int_value\n    jmp next_file\n\nend_program:\n    movl $1, %eax\n    xorl %ebx, %ebx\n    int $0x80\n\nwrite_string:\n    ret\n"
    command_compile: .asciz "gcc -o Sully_"
    command_run: .asciz "./Sully_"

section .bss
    filename: .space 20
    int_value: .space 4

section .text
global _start

_start:
    movl $5, int_value

next_file:
    cmpl $0, int_value
    jl end_program

    movl $0, %eax
    movl $1, %ebx
    movl $filename_prefix, %ecx
    call write_string

    ; Convert int_value to string and append to filename

    movl $filename_suffix, %ecx
    call write_string

    ; Write file content to Sully_X.s

    ; Compile the new file

    ; Run the new program

    subl $1, int_value
    jmp next_file

end_program:
    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80

write_string:
    ret