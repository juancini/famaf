#include <stdio.h>
#include <assert.h>
#include <limits.h>

int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;
}

void pedir_arreglo(int n_max, float a[]){
    printf("Dame un array de %d elementos, uno por uno che!\n", n_max);
    for (int i = 0; i < n_max; i++)
    {
        int x;
        printf("%d:", i);
        scanf("%d", &x);
        a[i] = x;
    }
    
}

struct datos_t {
    float maximo;
    float minimo;
    float promedio;
};

struct datos_t stats (int tam, float a[]) {
    struct datos_t estadisticas = {
        .maximo = INT_MIN,
        .minimo = INT_MAX,
        .promedio = 0
    };

    /* la funcion debe usar un solo ciclo */
    int i = 0;
    while (i < tam)
    {   
        float current_float = a[i];
        if (estadisticas.maximo < current_float) {
            estadisticas.maximo = current_float;
        }
        if (estadisticas.minimo > current_float) {
            estadisticas.minimo = current_float;
        }
        estadisticas.promedio += current_float;
        i++;
    }

    estadisticas.promedio /= tam;

    return estadisticas;
}


int main() {
    int tam = pedir_entero("tam");
    float a[tam];
    pedir_arreglo(tam, a);

    /* Calcula el minimo, maximo y promedio de un array no vacio de floats */
    struct datos_t estadistica = stats(tam, a);
    printf("maximo: %f, minimo: %f, promedio %f\n", estadistica.maximo, estadistica.minimo, estadistica.promedio);
    // repetir
    printf("de nuevo? 1 para si, 0 para no\n");
    int resp = pedir_entero("respuesta");
    
    if (resp == 1) {
        main();
    } else {
        return 0;
    }
}

