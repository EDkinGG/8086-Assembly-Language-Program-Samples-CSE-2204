org 100h

call bubble_sort
jmp z


bubble_sort proc near 
    
    pushf
    push cx
    push ax
    push bx
    push dx
    
    mov al,len
    sub al,01h
    mov ah,00h
    
    outer:
         cmp ah,al
         je x
          
         lea si,input
         lea di,input
         inc di
         mov bl,al
         sub bl,ah
         mov cl,bl
          
         inner:
               mov bh,[si]
               mov dh,[di]
               
               cmp bh,dh
               jb skip
               ;swap
               mov [si],dh
               mov [di],bh
               skip:
               inc si
               inc di
    
         loop inner
         inc ah
    
    jmp outer
    
    x:
    pop ax
    pop bx
    pop ax
    pop cx
    popf
    
    ret
    bubble_sort endp

z:
ret

input db 49h,07h,08h,09h,04h,03h,05h
len equ ($-input)




