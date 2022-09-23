.section __TEXT,__text
.globl _main

_main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $4, %rsp
    movl    $5, -4(%rbp)
    addq    $4, %rsp
    popq    %rbp
    retq
