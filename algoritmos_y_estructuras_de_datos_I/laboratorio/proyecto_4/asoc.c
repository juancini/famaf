#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

#define N 5

typedef char clave_t;
typedef int valor_t;

struct asoc
{
    clave_t clave;
    valor_t valor;
};

int pedir_char(char * nombre) {
    char x;
    printf("Que valor de %s hoy?\n", nombre);
    scanf(" %c", &x);
    return x;
}

void pedir_arreglo_asoc(int n_max, struct asoc a[]){
    printf("Dame un array de %d elementos tipo [asoc], uno por uno che!\n", n_max);
    for (int i = 0; i < n_max; i++)
    {
        char clave;
        printf("clave %d:", i);
        scanf(" %c", &clave);
        a[i].clave = clave;

        int valor;
        printf("valor %d:", i);
        scanf("%d", &valor);
        a[i].valor = valor;
    }
}

bool asoc_existe(int tam, struct asoc a[], clave_t c) {
    /* la funcion debe usar un solo ciclo */
    int i = 0;
    while (i < tam)
    {   
        if (a[i].clave == c) {
            return true;
        }
        i++;
    }
    return false;
}

int main() {

    // definir array
    struct asoc a[N];
    pedir_arreglo_asoc(N, a);

    // pedir clave
    int clave_a_buscar = pedir_char("clave");

    bool hay_clave_en_array = asoc_existe(N, a, clave_a_buscar);

    if (hay_clave_en_array)
    {
        printf("esta la clave %d en el array!\n", clave_a_buscar);
    } else {
        printf("NO esta la clave %d en el array!\n", clave_a_buscar);
    }
    

    // repetir
    printf("de nuevo? \"s\" para si, \"n\" para no\n");
    int resp = pedir_char("respuesta");
    
    if (resp == 's') {
        main();
    } else {
        return 0;
    }
}