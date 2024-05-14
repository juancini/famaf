#include <stdio.h>
#include <assert.h>

int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;
}

void cambio_de_variable(int x, int y) {
  int z;
  z = x;
  x = y;
  y = z;
  printf("Valores:\n   x:%d\n   y:%d\n   z:%d\n", x,y,z);
}

int main (void) {
  int x = pedir_entero("x");
  int y = pedir_entero("y");
  cambio_de_variable(x, y);
  return 0;
}