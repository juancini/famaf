#include <stdio.h>
#include <assert.h>

int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;

}
void hola_hasta() {
  int n = pedir_entero("n");
  
  assert(n>0);
  int i = 0;
  while (i != n)
  {
    printf("Hola! ");
    i++;
  }
}

int main (void) {
  // Imprimir holas
  hola_hasta();
  return 0;
}