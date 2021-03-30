section .text
        global _ft_strcmp
_ft_strcmp:
        mov rcx, -1
        mov rax, 0
.loop:
        inc rcx
        mov al, [rdi + rcx]
        cmp al, 0
        je .return
        cmp byte [rsi + rcx], 0
        je .return
        cmp al, [rsi + rcx]
        je .loop
.return:
        mov bl, [rsi + rcx]
        sub rax, rbx
        ret