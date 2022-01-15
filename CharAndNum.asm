org 100h

.data
arr db 'asgjhadg12356asdghjs45'
len equ ($-arr)

dt db '0123456789'

char db len dup(?)
num db len dup(?)

i dw 00h
j dw 00h

.code

mov cl,len
lea si,arr

outer:
    push cx
    
    lea di,dt
    mov cx,10
    
    inner:
        
        mov ah,[si]
        mov al,[di]
        cmp ah,al
        je add_num
        
        back_to_inner:
            inc di
            loop inner
    jmp add_char
    back_to_outer:
        pop cx
        inc si
        loop outer


ret


add_num:
lea bx,num
add bx,i
mov [bx],ah
inc i
jmp back_to_outer


add_char:
lea bx,char
add bx,j
mov [bx],ah
inc j
jmp back_to_outer

