
; Ejemplo de pasaje de parámetros a una subrutina por la pila

        .org 100h
        
        ;Carga de datos de prueba

		MOV    AX, 1221h   ; store 1221h in AX.--
		MOV    BX, 2103h   ; store 2103h in BX

        
		PUSH   AX          ; store value of AX in stack.
		PUSH   BX          ; store value of BX in stack.
        
        ;Llamado a subrutina
        
        call SUMA
        
        POP AX
        ;Almacenamiento de resultado
        mov [202h], AX 
        
        ;Salto a fin
        jmp fin

        
        ;Subrutina suma
        SUMA PROC          ;Inicio de la subrutina
        POP CX             ;ES LA DIRECCIÓN DEL CALL (PROGRAM COUNTETR)
        POP AX             ;ES EL DATO
		POP BX
		ADD AX,BX
		PUSH AX 
		PUSH CX            ;RECUPERA EL PROGRAM COUNTER
		
        
        ret                 ;Retorno de la subrutina
        SUMA ENDP          ;Fin de la subrutina

        
        ;Fin del programa
fin:
        int 20h
        ret

              
              




