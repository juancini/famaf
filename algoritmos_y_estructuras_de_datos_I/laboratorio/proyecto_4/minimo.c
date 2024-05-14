#include <stdio.h>
#include <assert.h>

int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;

}

int minimo () {
  int swap;
  int x = pedir_entero("x");
  int y = pedir_entero("y");

  assert(x != y);
  if (x > y)
  {
    ;
  } else {
    swap = x;
    x = y;
    y = swap;
  }
  assert(x > y);
  printf("%d es mas grande que %d\n", x, y);
  return x;
}

int main (void) {
  // Valores minimos entre dos ints
  minimo();
  return 0;
}