#include <stdio.h>
#include <assert.h>

int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;

}

int valor_absoluto() {
  printf("Valor Absoluto de x: \n");
  int x = pedir_entero("x");
  if (x >= 0)
  {
    ;
  }
  else if (x < 0)
  {
    x = -x;
  }
  
  assert(x >= 0);
  printf("Valor Absoluto: %d\n", x);
  return x;
}

int main (void) {
  valor_absoluto();
  return 0;
}