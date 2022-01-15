org 100h

mov al,num1

mov cx,08h

outer:
    mov bl,al
    mov dl,01h
    and bl,dl
    cmp bl,01h
    jne back_to_outer
    inc noOfset
    
    back_to_outer:
        ror al,01h
    loop outer
    
z:   
ret

num1 db 0FFh
noOfset db 00h