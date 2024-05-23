#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include "arreglos.h" // nos permite traer la funcion de pedir_arreglo

struct comp_t {
    int menores;
    int iguales;
    int mayores;
};

struct comp_t cuantos(int tam, int a[], int elem) {
    struct comp_t resultado;
    // recorrer el array
    int i = 0;
    while (i != tam) {
        if (a[i] == elem) {
            resultado.iguales++;
        } else if (a[i] > 0) {
            resultado.menores++;
        } else {
            resultado.mayores++;
        }
        i++;
    }
    return resultado;
}

int main() {

    int tam = pedir_entero("tam");
    int element = pedir_entero("element");

    int a[tam];
    pedir_arreglo(tam, a);

    struct comp_t return_struct = cuantos(tam, a, element);
    printf("iguales: %d, menores: %d, mayores %d\n", return_struct.iguales, return_struct.menores, return_struct.mayores);

    // repetir
    printf("de nuevo? 1 para si, 0 para no\n");
    int resp = pedir_entero("respuesta");
    
    if (resp == 1) {
        main();
    } else {
        return 0;
    }
}

