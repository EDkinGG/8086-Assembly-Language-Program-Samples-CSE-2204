org 100h

mov al,0Eh   ;  al = 0000 1110
mov bl,0Ah   ;  bl = 0000 1010
div bl       ;  after div ah = 0000 0100 and al = 0000 0001

ror al,04h   ;  al 0000 0001 --> 0001 0000 
or al,ah     ;  al or ah   0001 0000 OR 0000 0100 == 0001 0100 = 1 4 

ret



