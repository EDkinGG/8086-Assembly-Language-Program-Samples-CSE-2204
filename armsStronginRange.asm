org 100h

.data
ans dw 50 dup(?)
sum dw 0h

.code
lea si,ans
mov cx,365


outer:
    mov ax,cx
    push cx
    mov cx,03h
    
    inner:
        mov bl,0Ah
        div bl
        
        mov dl,al
        
        mov al,ah
        mov bl,ah
        mov ah,00h
        mul bl
        mul bl
        add sum,ax 
        back_to_inner:
            mov al,dl
            mov ah,00h           
            loop inner
    
    pop cx
    cmp sum,cx    
    je  armst   
    back_to_outer:
        inc cx
        mov sum,00h
        cmp cx,375
        je z
    jmp outer    

z:
ret 


armst:
mov dx,sum
mov [si],dx
inc si
inc si
jmp back_to_outer