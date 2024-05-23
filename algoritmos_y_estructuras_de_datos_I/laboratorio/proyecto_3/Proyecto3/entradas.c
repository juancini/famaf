#include <stdio.h>

int pedirEntero(void)
{
  int x;
  printf("Ingrese un entero:\n");
  scanf("%d", &x);
  return x;
}

void imprimeUnEntero(int x)
{
  printf("Su entero: %d", x);
}

/* 6.b */
// 4.a
int exerciseEAndF(void)
{
  // Esta funcion fue reescrita segun el ejercicio 6.b
  int x, y;
  x = pedirEntero();
  y = pedirEntero();

  printf("Alpha 0: x -> %d, y -> %d\n", x, y);
  if (x >= y)
  {
    printf("Alpha 1: x -> %d, y -> %d\n", x, y);
    x = 0;
    printf("Alpha 2: x -> %d, y -> %d\n", x, y);
  }
  else if (x <= y)
  {
    printf("Alpha 1': x -> %d, y -> %d\n", x, y);
    x = 2;
    printf("Alpha 2': x -> %d, y -> %d\n", x, y);
  }
  printf("Alpha 3: x -> %d, y -> %d\n", x, y);
  return x;
}

/* Claramente facilita mucho el input y manejo de entrada de datos del usuario
  la funcion pedirEntero y mostrar entero. Posee una clara ventaja para la
  legibilidad del codigo al ser mas explicito la toma de inputs del usuario.
  Su desventaja principal es la falta de flexibilidad a la toma y salida de 
  valores, ya que siempre imprime "Ingrese un entero", lo cual no queda claro
  a que valores hace referencia. Una version mejorada podria tomar de entrada el
  nombre de la variable a nombrar y mostrar. */

int main(void)
{
  exerciseEAndF();
  return 0;
}