#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include "arreglos.h" // nos permite traer la funcion de pedir_arreglo


int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;
}

bool todos_pares(int tam, int a[]) {
    /* recibe un tamaño máximo de arreglo y un arreglo como argumento
    devolviendo true cuando todos los elementos del arreglo a[] son numeros
    pares y false en caso contrario. */
    assert(tam >= 0);

    for (int i = 0; i < tam; i++)
    {
        if (a[i] % 2 == 1) {
            return false;
        }
    }
    return true;
}
bool existe_multiplo(int m, int tam, int a[]) {
    /* determina si hay en el arreglo a[] algun elemento que es multiplo
    de m. */
    assert(tam >= 0);

    for (int i = 0; i < tam; i++)
    {
        if (a[i] % m == 0) {
            return true;
        }
    }
    return false;
}

int main() {
    int tam = pedir_entero("tam");
    assert(tam >= 0);

    int a[tam];
    pedir_arreglo(tam, a);

    printf("seran todos pares?\n");
    printf("%d\n", todos_pares(tam, a));

    int m = pedir_entero("m");
    printf("Habra algun multiplo de %d?\n", m);
    printf("%d\n", existe_multiplo(m, tam, a));

    return 0;
}
