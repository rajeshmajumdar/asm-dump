		global _main

		section .text
_main:	mov rax, 0x2000004	; syscall for write
		mov rdi, 1			; 1 for stdout
		mov rsi, message	; address of string to the output
		mov rdx, 13			; size of the string
		syscall
		mov	rax, 0x2000001	; syscall for exit
		xor	rdi, rdi		; exit code 0
		syscall

		section .data
message:db	"Hello, Momo!", 10	; the newline at the end
