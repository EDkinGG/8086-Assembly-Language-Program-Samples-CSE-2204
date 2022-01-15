org 100h

.data
array1 db 03h,01h,08h,07h,09h,11h,21h
len equ ($-array1)
ans db len dup(0)

.code
lea si,array1
lea di,ans
mov cl,len

outer:
    push cx
    mov al,[si]
    
    cmp al,01h
    je back_to_outer
    
    cmp al,02h
    je add_prime
    
    mov bl,02h
    mov cl,al
    sub cl,02h
    
    inner:
        mov ah,0h
        mov al,[si]
        div bl
        cmp ah,0h
        je back_to_outer
        back_to_inner:
            inc bl
            loop inner
     
     jmp add_prime
     back_to_outer:
        pop cx
        inc si
        loop outer


z:
ret


add_prime:
mov dl,[si]
mov [di],dl
inc di
jmp back_to_outer