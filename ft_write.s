section .data

section .text
	global _ft_write
    extern ___error

_ft_write:
	mov rax, 0x2000004
    syscall
	jc error
    ret
error:
    push rax
    call ___error
    pop r15
    mov [rax], r15
    mov rax, -1
    ret