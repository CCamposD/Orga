# Apunte: Sistemas de Numeración (Resumen para Cuaderno)

## 1. Sistemas de Numeración
- **Binario (Base 2)**: Usa dígitos 0 y 1.
- **Octal (Base 8)**: Usa dígitos de 0 a 7.
- **Decimal (Base 10)**: Usa dígitos de 0 a 9.
- **Hexadecimal (Base 16)**: Usa dígitos del 0 al 9 y letras A-F (A=10, ..., F=15).

## 2. Conversión entre bases

### De decimal a otra base:
**Ejemplo (Decimal a Binario)**:
- Número: 25
- Divisiones sucesivas por 2:
  - 25 ÷ 2 = 12 resto 1
  - 12 ÷ 2 = 6  resto 0
  - 6 ÷ 2 = 3   resto 0
  - 3 ÷ 2 = 1   resto 1
  - 1 ÷ 2 = 0   resto 1
- Resultado binario: **11001**

**Ejemplo (Decimal a Hexadecimal)**:
- Número: 202
- Divisiones sucesivas por 16:
  - 202 ÷ 16 = 12 resto 10 → A
  - 12 ÷ 16 = 0  resto 12 → C
- Resultado hexadecimal: **CA**

### De otra base a decimal:
**Ejemplo (Binario a Decimal)**:
- Número binario: 10110
- Cálculo: 1×2⁴ + 0×2³ + 1×2² + 1×2¹ + 0×2⁰ = 16 + 4 + 2 = **22**

**Ejemplo (Hexadecimal a Decimal)**:
- Número: 1A
- Cálculo: 1×16¹ + A×16⁰ = 16 + 10 = **26**

## 3. Representaciones numéricas con signo
- **Complemento a 2**:
  - Invertir los bits y sumar 1.
  - Ejemplo: -5 en 8 bits: 00000101 → 11111011

## 4. Empaquetado decimal (Packed Decimal - BCD empaquetado)
- Cada dígito decimal se guarda en 4 bits.
- Dos dígitos se agrupan en 1 byte.
- Ejemplo: número 48  →  0100 1000 (Hex: 0x48)
- Para números impares, se puede completar con el signo (por ejemplo, F para positivo).

## 5. Código EBCDIC
- Cada carácter tiene una representación en hexadecimal.
- Tabla usada para traducción.
- Ejemplo: 'A' = C1, 'B' = C2...

**Traducción de palabras:**
- D6 D9 C7 C1  → M I G A

**Conversión desde EBCDIC:**
1. Convertir cada par hexadecimal a binario (8 bits).
2. Consultar tabla EBCDIC para obtener el carácter correspondiente.

## 6. ASCII (American Standard Code for Information Interchange)
- Cada carácter tiene su código (decimal, octal, hexadecimal).
- Ejemplo:
  - 'A' = 65 (dec) = 101 (oct) = 41 (hex)

## 7. IEEE 754 (Punto flotante, precisión simple)
- 32 bits:
  - 1 bit de signo
  - 8 bits para el exponente (con bias de 127)
  - 23 bits de mantisa (fracción)

**Pasos para representar un número:**
1. Convertir el número a binario.
2. Normalizar: llevar a forma **1.xxxxx × 2ⁿ**.
3. Calcular exponente con bias (E = exponente + 127).
4. El primer 1 de la mantisa no se guarda (es implícito).

**Ejemplo:**
- Número: 2013868923
- Binario: 01111000 00001001 00110011 01111011 (32 bits)
- S = 0
- Exponente (bits 2 a 9): 11110000 = 240 → Exponente real: 240 - 127 = **113**
- Mantisa: lo que sigue después del bit 8 → guardar 23 bits
- Normalizado: 1.111 0000... × 2¹¹³

## 8. Conversiones a octal
- Agrupar bits en grupos de 3 de derecha a izquierda.
- Ejemplo:
  - Binario: 11010110 → 001 101 011 0 → 1 5 3 → Octal: **153**
