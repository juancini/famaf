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
  int z = pedir_entero("z");
  int X = x;
  int Y = y;
  int Z = z;
  int swap_x, swap_y;

  assert(x == X && y == Y && z == Z);

  swap_x = x;
  swap_y = y;
  // x, y, z = y, y + x + z, y + x
  x = y;
  y = y + swap_x + z;
  z = swap_y + swap_x;

  assert(x == (X+1) && y == Y+X+Z && z == Y + X);

  printf("x: %d, y: %d, z: %d\n", x, y, z);
}

int main(void){
  multiple();
  return 0;
}