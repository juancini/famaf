#ifndef ARREGLOS_H
#define ARREGLOS_H

// Function prototypes
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
        printf("%d:", i);
        scanf("%d", &x);
        a[i] = x;
    }
    
}

#endif