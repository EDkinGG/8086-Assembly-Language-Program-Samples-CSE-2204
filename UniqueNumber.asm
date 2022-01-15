org 100h 

.data
array1 db 01h,03h,04h,01h,02h,04h
len equ ($-array1)
ans db len dup(0)
count db 00h

.code

lea si,array1
lea bx,ans
mov cx,len

outer:
      push cx
      
      mov al,[si]
      mov count,0h
      
      lea di,array1
      mov cx,len
      inner:                ;inner
            mov ah,[di]
            cmp ah,al
            je  inc_count
            back_to_inner:
                inc di
                loop inner      ;inner
            
      cmp count,01h
      je  add_number
      back_to_outer:
            
            pop cx
            inc si  
            loop outer


z:
ret


inc_count:
    inc count
    jmp back_to_inner

add_number:
    mov [bx],al
    inc bx
    jmp back_to_outer