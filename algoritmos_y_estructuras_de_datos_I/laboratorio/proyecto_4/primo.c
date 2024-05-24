#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include "arreglos.h" // nos permite traer la funcion de pedir_arreglo

int nesimo_primo(int n) {
    /* Devuelve el Nesimo primo */

    // Usando la criba de Eratóstenes
    bool is_prime[n * 10]; // crear un array de booleanos para guardar numeros primos
    int count = 0;         // llevar cuenta de cantidad de primos encontrados

    // inicializar todos los numeros como primos
    int i = 2;
    while (i < n * 10) {
        is_prime[i] = true;
        i++;
    }

    // marcar numeros no primos usando la criba
    i = 2;
    while (i * i < n * 10) {
        if (is_prime[i]) {
            // si es primo vamos a marcar todos sus multiplos como primos
            int j = i * i;
            while (j < n * 10) {
                is_prime[j] = false;
                j += i; // para saltar de multiplo en multiplo
            }
            
        }
        i++;
    }

    // find the nth prime number
    int nth_prime_number = 0;
    i = 2;
    while (i < n * 10) {
        if (is_prime[i]) {
            count++;
            if (count == n) {
                nth_prime_number = i;
                break;
            }
        }
        i++;
    }

    return nth_prime_number;
}

int main() {
    int nesimo = pedir_entero("nesimo primo");

    if (nesimo < 0) {
        /* al ingresar un valor negativo, solicite el valor hasta que se ingrese un n positivo */
        printf("Ese numero es negativo, y con esos no tranzamos!\n");
        main();
    } else {
        printf("el %d primo es: %d\n", nesimo, nesimo_primo(nesimo));
        return 0;
    }
}