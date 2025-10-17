
; 13. Realizar el checksum (suma de chequeo mediante XOR) del conjunto de
;datos que comienzan en la dirección 202 y tiene una longitud dada por el
;dato almacenado en la dirección 201. Almacenar el resultado en la
;dirección 200.

org 100h
        mov ch, 0
        mov cl,[201h] ;Cantidad de datos
        mov bx,202h   ;Dirección 1er dato
        mov al,[bx]   ;primer dato
check:  inc bx        ;incrementar dirección
        xor al,[bx]   ;xor
        loop check    ; si no es cero itera
        mov [200h], al;guardar el resultado
        
ret




