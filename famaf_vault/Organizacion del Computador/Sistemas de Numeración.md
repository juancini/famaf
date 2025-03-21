> Organizacion del Computador 2025


| bin  | base 10 |
| ---- | ------- |
| 0000 | 0       |
| 0001 | 1       |
| 0010 | 2       |
| 0011 | 3       |
| 0100 | 4       |
| 0101 | 5       |
| 0110 | 6       |
| 0111 | 7       |
| 1000 | 8       |
| 1001 | 9       |
| ...  | ...     |
| 1111 | 15      |

# Conversion Hexadecimal - Binario
Para convertir Hexadecimal a binario, reemplazamos el hex por su equivalente en binario


| $1_{hex}$ | 0001 | $5_{hex}$ | 0101 | $9_{hex}$ | 1001 | $d_{hex}$ | 1101 |
| --------- | ---- | --------- | ---- | --------- | ---- | --------- | ---- |
| $2_{hex}$ | 0010 | $6_{hex}$ | 0110 | $a_{hex}$ | 1010 | $e_{hex}$ | 1110 |
| $3_{hex}$ | 0011 | $7_{hex}$ | 0111 | $b_{hex}$ | 1011 | $f_{hex}$ | 1111 |
| $4_{hex}$ | 0100 | $8_{hex}$ | 1000 | $c_{hex}$ | 1100 | $0_{hex}$ | 0000 |

# Conversion Fraccional a Binario
La conversión de números decimales con parte fraccionaria a binario se realiza en dos partes:

1. **Para la parte entera** (antes de la coma):
    - Divide repetidamente entre 2 y anota los residuos
    - Lee los residuos de abajo hacia arriba
2. **Para la parte fraccionaria** (después de la coma):
    - Multiplica por 2 repetidamente
    - Anota la parte entera de cada resultado
    - Continúa hasta obtener un producto exacto o hasta alcanzar la precisión deseada

Veamos un ejemplo paso a paso con el número 5,625:

**Parte entera (5):**

- 5 ÷ 2 = 2 con residuo 1
- 2 ÷ 2 = 1 con residuo 0
- 1 ÷ 2 = 0 con residuo 1
- Leyendo de abajo hacia arriba: 101₂

**Parte fraccionaria (0,625):**

- 0,625 × 2 = 1,25 → anotamos 1
- 0,25 × 2 = 0,5 → anotamos 0
- 0,5 × 2 = 1,0 → anotamos 1
- Como llegamos a un producto exacto (1,0), terminamos: 101₂

Por lo tanto, 5,625₁₀ = 101,101₂

Si la parte fraccionaria no termina (genera un patrón repetitivo o no converge), podemos detenernos cuando alcancemos la precisión necesaria, reconociendo que el resultado será una aproximación.