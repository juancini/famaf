#include <stdio.h>
#include <assert.h>
#include "arreglos.h" // nos permite traer la funcion de pedir_arreglo

int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;
}

int sumatoria(int tam, int a[]){
    int sum_of_elements = 0;
    for (int i = 0; i < tam; i++)
    {
        sum_of_elements += a[i];
    }
    return sum_of_elements;
}
int main() {
    // ingreso de parametros
    int tam = pedir_entero("tam");
    assert(tam >= 0);

    int a[tam];
    pedir_arreglo(tam, a);

    // sumatoria del arreglo
    int resultado = sumatoria(tam, a);
    printf("resultado: %d\n", resultado);
    return 0;
}
