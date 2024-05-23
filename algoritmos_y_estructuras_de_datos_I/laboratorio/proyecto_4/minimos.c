#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include <limits.h>
#include "arreglos.h" // nos permite traer la funcion de pedir_arreglo, pedir_entero

int minimo_pares(int tam, int a[]) {
  /* Devuelve el elemento PAR mas chico del arreglo a */

  int valor_mas_chico = INT_MAX;

  for (int i = 0; i < tam; i++) {
    if (a[i] % 2 == 0) {
      if (a[i] < valor_mas_chico) {
        valor_mas_chico = a[i];
      }
    }
  }
  
  return valor_mas_chico;
}

int minimo_impares(int tam, int a[]) {
  /* Devuelve el elemento impar mas chico del arreglo a */
  int valor_mas_chico = INT_MAX;

  for (int i = 0; i < tam; i++) {
    if (a[i] % 2 == 1) {
      if (a[i] < valor_mas_chico) {
        valor_mas_chico = a[i];
      }
    }
  }

  return valor_mas_chico;
}

int main() {
    int tam = pedir_entero("tam");
    assert(tam >= 0);

    int a[tam];
    pedir_arreglo(tam, a);

    // intercambiar lugar
    printf("elemento par mas chico del array: %d \n", minimo_pares(tam, a));
    printf("elemento impar mas chico del array: %d\n", minimo_impares(tam, a));
    return 0;
}
