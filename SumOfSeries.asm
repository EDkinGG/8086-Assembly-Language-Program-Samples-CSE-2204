;1^2+2^2+......+n^2

org 100h

mov cx,10d
mov bx,01d

for:
    mov ax,bx
    mul ax
    add sum,ax
    inc bx
    loop for


ret

sum dw 00d




