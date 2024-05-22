#include <stdio.h>
#include "arreglos.h"
#define N 4

int ejercicio_a(int a[]){
  int i, sum;
  i = 0;
  sum = 0;
  printf("i: %d, sum: %d \n", i, sum);
  while (i < N) {
    sum = sum + a[i];
    i++;
    printf("i: %d, sum: %d \n", i, sum);
  }

  return sum;
}

int ejercicio_b(int a[]){
  int i, sum;
  i = 0;
  sum = 0;
  printf("i: %d, sum: %d \n", i, sum);
  while (i < N) {
    if (a[i] > 0)
    { 
      sum += a[i];
    }
    // aca dejamos afuera la guarda original del ejercicio, ya que no hace falta por tener un skip dentro
    i++;
    printf("i: %d, sum: %d \n", i, sum);
  }

  return sum;
}

int ejercicio_16(int n, int y){
  int i, x;
  i = 0;
  x = 1;
  printf("i: %d, x: %d \n", i, x);
  while (i < n) {
    x = x * y;
    i++;
    printf("i: %d, x: %d \n", i, x);
  }

  return x;
}

int main() {
  int a[N];
  pedir_arreglo(N, a);

  printf("sumatoria: %d\n", ejercicio_a(a));
  printf("sumatoria de positivos: %d\n", ejercicio_b(a));

  int y = pedir_entero("y");
  int n = pedir_entero("n");
  printf("y elevado a la n: %d\n", ejercicio_16(n, y));
  return 0;
}
