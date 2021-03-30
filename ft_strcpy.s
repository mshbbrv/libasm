section .text
        global _ft_strcpy
_ft_strcpy:
        mov rcx, -1 ; задаем счетчик i = -1
.loop:
        inc rcx ; увеличиваем счетчик i++;
        mov dl, [rsi + rcx]
        mov [rdi + rcx], dl
        cmp dl, 0
        jne .loop
        mov rax, rdi ; из rdi кладем указатель в rax
        ret ; возвращаем rax