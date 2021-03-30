section .text
        extern ___error
        global _ft_write
_ft_write:
        mov rax, 0x2000004
        syscall
        jc .error
        ret
.error:
        push r15
        mov r15, rax
        call ___error
        mov [rax], r15
        pop r15
        mov rax, -1
        ret