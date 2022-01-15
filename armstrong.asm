org 100h


lea si,digit
mov bl,num
mov al,bl
mov dl,0Ah


disec:
    div dl
    mov [si],ah
    inc si
    inc count
    
    mov ah,00h
    cmp al,00h
    
    jne disec
    

mov cl,count
lea si,digit

outer:
    push cx
    mov cl,count
    sub cl,01h
    mov bl,[si]
      inner:
            mov al,[si]
            mul bl
            mov bl,al
            loop inner
    add sum,bl  
    pop cx
    inc si  
    loop outer
    

mov ans,'N'
mov bl,num
mov bh,sum
cmp bl,bh
jne z
mov ans,'Y'
z:
ret

num db 153
digit db 10 dup (10) 
count db 00h
sum db 00h
ans db ?