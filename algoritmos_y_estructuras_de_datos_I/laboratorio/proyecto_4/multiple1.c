#include <stdio.h>
#include <assert.h>

int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;

}

void multiple () {
  int x = pedir_entero("x");
  int y = pedir_entero("y");
  int X = x;
  int Y = y;
  int swap;
  assert(x == X && y == Y);
  swap = x;
  y = x + y;
  x = swap + 1;
  assert(x == (X+1) && y == Y+X);
  printf("x: %d, y: %d\n", x,y);
}

int main(void){
  multiple();
  return 0;
}