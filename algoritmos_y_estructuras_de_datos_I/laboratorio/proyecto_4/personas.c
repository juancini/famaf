#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include "arreglos.h" // nos permite traer la funcion de pedir_arreglo

typedef struct _persona {
char *nombre;
int edad;
float altura;
float peso;
} persona_t;

float peso_promedio(unsigned int longitud, persona_t arr[]) {
    unsigned int i = 0;
    float promedio = 0.0;
    while (i < longitud) {   
        promedio += arr[i].peso;
        i++;
    }
    promedio /= longitud;

    return promedio;
}
persona_t persona_de_mayor_edad(unsigned int longitud, persona_t arr[]) {
    unsigned int i = 0;
    persona_t persona_de_mayor_edad = arr[i];
    while (i < longitud) {   
        if (arr[i].edad > persona_de_mayor_edad.edad)
        {
            persona_de_mayor_edad = arr[i];
        }
        i++;
    }

    return persona_de_mayor_edad;
}

persona_t persona_de_menor_altura(unsigned int longitud, persona_t arr[]) {
    unsigned int i = 0;
    persona_t persona_de_mayor_edad = arr[i];
    while (i < longitud) {   
        if (arr[i].altura < persona_de_mayor_edad.altura)
        {
            persona_de_mayor_edad = arr[i];
        }
        i++;
    }

    return persona_de_mayor_edad;
}

int main() {

    persona_t p1 = {.nombre="Paola", .edad=21, .altura=1.85, .peso=75};
    persona_t p2 = {.nombre="Luis", .edad=54, .altura=1.75, .peso=69};
    persona_t p3 = {.nombre="Julio", .edad=40, .altura=1.70, .peso=80};
    unsigned int longitud = 3;
    persona_t arr[] = {p1, p2, p3};
    printf("El peso promedio es %f\n", peso_promedio(longitud, arr));
    persona_t p = persona_de_mayor_edad(longitud, arr);
    printf("El nombre de la persona con mayor edad es %s\n", p.nombre);
    p = persona_de_menor_altura(longitud, arr);
    printf("El nombre de la persona con menor altura es %s\n", p.nombre);
    return 0;

    // repetir
    printf("de nuevo? 1 para si, 0 para no\n");
    int resp = pedir_entero("respuesta");
    
    if (resp == 1) {
        main();
    } else {
        return 0;
    }
}