org 100h


mov al,num1
call BCD_BIN
mov num2,al

jmp z

BCD_BIN proc near
    pushf
    push cx
    
    mov bl,al
    and bl,0Fh
    and al,0F0h
    ror al,04h
    mov dl,0Ah
    mul dl
    add al,bl
    pop cx
    popf
    
    ret
    BCD_BIN endp

z:
ret

num1 db 56h
num2 db 00h


