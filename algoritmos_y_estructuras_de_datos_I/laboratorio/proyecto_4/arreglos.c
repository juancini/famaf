#include <stdio.h>
#include <assert.h>
#include <limits.h>

int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;
}

void imprimir_arreglo(int n_max, int a[]) {
    for (int i = 0; i < n_max; i++)
    {
        printf("%d, ", a[i]);
    }
    printf("\n");
}

void pedir_arreglo(int n_max, int a[]){
    printf("Dame un array de %d elementos, uno por uno che!\n", n_max);
    for (int i = 0; i < n_max; i++)
    {
        int x;
        printf("%d:\n", i);
        scanf("%d", &x);
        a[i] = x;
    }
    
}

int main() {
    // parametros de entrada
    int n_max = pedir_entero("n_max");
    int a[n_max]; // duda: No se bien como definir este arreglo

    // llamar a pedir_arreglo
    pedir_arreglo(n_max, a);

    // imprimirlo
    imprimir_arreglo(n_max, a);
    return 0;
}
