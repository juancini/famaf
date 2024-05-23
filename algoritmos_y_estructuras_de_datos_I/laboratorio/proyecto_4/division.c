#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include "arreglos.h" // nos permite traer la funcion de pedir_arreglo

struct div_t {
int cociente;
int resto;
};

struct div_t division(int x, int y){
  struct div_t resultado;

  // algoritmo de la division visto en clase
  int q = 0;
  while (x >= y) {
    x = x - y;
    q++;
  }

  resultado.cociente = q;
  resultado.resto = x;
  return resultado;
}

int main() {
  int x = pedir_entero("x");
  int y = pedir_entero("y");

  assert(x > 0 && y > 0);
  struct div_t resultado = division(x, y);

  printf("cociente: %d \n", resultado.cociente);
  printf("resto: %d \n", resultado.resto);
  
  return 0;
}
