#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include "arreglos.h" // nos permite traer la funcion de pedir_arreglo, pedir_entero

void intercambiar(int tam, int a[], int i, int j) {
  /* Intercambia los elementos en las posiciones i y j entre ellos */
  assert(tam >= 0);
  int i_temp = a[i];
  a[i] = a[j];
  a[j] = i_temp;
}

int main() {
    int tam = pedir_entero("tam");
    assert(tam >= 0);

    int a[tam];
    pedir_arreglo(tam, a);

    int i = pedir_entero("i");
    assert(i >= 0 && i < tam);

    int j = pedir_entero("j");
    assert(j >= 0 && j < tam);

    // intercambiar lugar
    intercambiar(tam, a, i, j);
    imprimir_arreglo(tam, a);
    return 0;
}
