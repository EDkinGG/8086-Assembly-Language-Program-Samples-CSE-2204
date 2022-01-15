org 100h

.data

arr db 01h,02h,01h,02h,01h,03h,04h,03h
len equ ($-arr)

ans db len dup(0)
count db 00h

.code

mov cx,len
lea si,arr
lea bx,ans

outer:
     push cx
     
     mov dl,[si]
     mov count,00h 
     mov cx,len
     lea di,arr
     inner:
        mov dh,[di]
        cmp dh,dl
        je inc_count
     
        back_to_inner:
            inc di
            loop inner  
     
    cmp count,03h
    
    jne add_number 

    back_to_outer:
        pop cx
        inc si
    
        loop outer



ret

inc_count:
inc count
jmp back_to_inner


add_number:
mov [bx],dl
inc bx
jmp back_to_outer