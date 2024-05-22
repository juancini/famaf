#ifndef ARREGLOS_H
#define ARREGLOS_H

// Function prototypes
void imprimir_arreglo(int n_max, int a[]) {
    for (int i = 0; i < (n_max - 1); i++)
    {
        printf("%d, ", a[i]);
    }
    printf("%d\n", a[n_max - 1]);                                    
}

void pedir_arreglo(int n_max, int a[]){
    printf("Dame un array de %d elementos, uno por uno che!\n", n_max);
    for (int i = 0; i < n_max; i++)
    {
        int x;
        printf("%d:", i);
        scanf("%d", &x);
        a[i] = x;
    }
    
}

int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;
}

#endif