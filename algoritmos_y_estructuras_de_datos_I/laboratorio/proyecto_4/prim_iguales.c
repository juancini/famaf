#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include "arreglos.h" // nos permite traer la funcion de pedir_arreglo

#define N 7

int prim_iguales(int tam, int a[]) {
    int contador = 0;
    while (contador < tam) {
        if (a[contador] != a[contador + 1])
        {
            return contador;
        }
        contador++;
    }
    return contador; // si todo el arreglo es igual, lo devuelve
}

int main() {
    int a[N];
    pedir_arreglo(N, a);

    // a) mostrar el resultado de la funci ́on prim_iguales por pantalla
    int primeros_iguales = prim_iguales(N, a);
    printf("Tenes %d de elementos iguales al principio del array.\n",
        primeros_iguales + 1);

    // b) (Punto Estrella) Mostrar por pantalla el mayor tramo inicial del arreglo a[] que tiene
    // a todos sus elementos iguales.
    imprimir_arreglo(primeros_iguales, a);

    // repetir
    printf("de nuevo? 1 para si, 0 para no\n");
    int resp = pedir_entero("respuesta");
    
    if (resp == 1) {
        main();
    } else {
        return 0;
    }
}
