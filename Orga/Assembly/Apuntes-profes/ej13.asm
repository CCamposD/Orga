
; 13. Realizar el checksum (suma de chequeo mediante XOR) del conjunto de
;datos que comienzan en la direcci�n 202 y tiene una longitud dada por el
;dato almacenado en la direcci�n 201. Almacenar el resultado en la
;direcci�n 200.

org 100h
        mov ch, 0
        mov cl,[201h] ;Cantidad de datos
        mov bx,202h   ;Direcci�n 1er dato
        mov al,[bx]   ;primer dato
check:  inc bx        ;incrementar direcci�n
        xor al,[bx]   ;xor
        loop check    ; si no es cero itera
        mov [200h], al;guardar el resultado
        
ret




