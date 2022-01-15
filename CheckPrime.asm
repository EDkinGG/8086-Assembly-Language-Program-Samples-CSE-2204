org 100h

cmp num,01h
je not_prime

cmp num,02h
je is_prime

mov bl,02h
mov cl,num
sub cl,02h


outer:
    mov al,num
    div bl
    cmp ah,0h
    je not_prime 
    back_to_outer:
        inc bl
        mov ah,00h
        loop outer


is_prime:
mov ans,'Y'
jmp z

not_prime:
mov ans,'N'

z:
ret

num db 33
ans db ?