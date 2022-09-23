    .section .data
numbers:
    .int    1,2,3,4,5,6,7,8,9,0

    .section .text
    .globl  _start
_start:
    movl    $0, %edi
    movl    numbers(,%edi,4), %eax
    movl    %eax, %ebx

start_loop:
    cmpl    $0, %eax
    je      exit_loop
    incl    %edi
    movl    numbers(,%edi,4), %eax
    cmpl    %ebx, %eax
    jle     start_loop
    movl    %eax, %ebx
    jmp     start_loop

exit_loop:
    movl    $1, %eax
    int     $0x80
