org 100h

mov ax , 010Eh

mov bx,ax
and bx,000Fh
mov lsb,bx

mov cx,04h

outer:
    mov bx,ax
    and bx,000Fh
    cmp bx,00h
    je back_to_outer
    mov msb,bx

    back_to_outer:
    ror ax,04h
    
    loop outer


ret

msb dw 00h
lsb dw 00h