#include <stdio.h>

void imprimeHola(void) {
  printf("Hola :)");
}


void imprimeChau(void) {
  printf("Chau >:(");
}

int main (void) {
  imprimeHola();
  imprimeHola();
  imprimeChau();
  imprimeChau();
  return 0;
}