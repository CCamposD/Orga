.equ SWITCH, 0xFF200040 @ la dirección está en la ventana del switch en el simulador
.equ LED, 0xFF200000 @ la dirección está en la ventana del LED en el simulador
.global _start
_start:
ldr r0,=SWITCH
ldr r1,[r0] @ lectura del dispositivo de entrada almacenada en r1
ldr r0,=LED
str r1,[r0] @ escritura del dispositivo de salida con el dato de r1
.end
