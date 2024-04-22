#include <stdio.h>
#include <assert.h>

int sumAndAddOne(int x, int y) {
  return x + y + 1;
}

int multiplyAndAdd(int x, int y, int z) {
  return z * z + y * 45 - 15 * x;
}

int equalsModule(int x, int y) {
  return y - 2 == (x * 3 + 1) % 5;
}

int divideByDouble(int x, int y) {
  return y / 2 * x;
}

int lessThanMultiplication(int x, int y, int z) {
  return y < x * z;
}

int isModuleOfFour(int x) {
  return x % 4 == 0;
}

int sumEqualsCeroAndSubstractionEqualsNegativeZ (int x, int y, int z) {
  return x + y == 0 && y - x == (-1) * z; 
}

int notTwoValues(int b, int w) {
  return ! (b && w);
}

int setFive(int x) {
  printf("Alpha 0: x -> %d\n", x);
  x = 5;
  printf("Alpha 1: x -> %d\n", x);
  return x;
}

int sumAndDouble(int x, int y) {
  printf("Alpha 0: x -> %d, y -> %d\n", x, y);
  x = x + y;
  printf("Alpha 1: x -> %d, y -> %d\n", x, y);
  y = y + y;
  printf("Alpha 2: x -> %d, y -> %d\n", x, y);
  return 0;
}

int doubleAndSum(int x, int y) {
  printf("Alpha 0: x -> %d, y -> %d\n", x, y);
  y = y + y;
  printf("Alpha 1: x -> %d, y -> %d\n", x, y);
  x = x + y;
  printf("Alpha 2: x -> %d, y -> %d\n", x, y);
  return 0;
}

int exerciseEAndF(int x, int y) {
  printf("Alpha 0: x -> %d, y -> %d\n", x, y);
  if (x >= y) {
    printf("Alpha 1: x -> %d, y -> %d\n", x, y);
    x = 0;
    printf("Alpha 2: x -> %d, y -> %d\n", x, y);
  } else if (x <= y) {
    printf("Alpha 1': x -> %d, y -> %d\n", x, y);
    x = 2;
    printf("Alpha 2': x -> %d, y -> %d\n", x, y);
  }
  printf("Alpha 3: x -> %d, y -> %d\n", x, y);
  return x; 
}

int smallest (int x, int y, int z, int m) {
  printf("Alpha 1: x -> %d, y -> %d, z -> %d, m -> %d\n", x, y, z, m);
  if (x < y) {
    m = x;
  } else {
    m = y;
  }
  printf("Alpha 2: x -> %d, y -> %d, z -> %d, m -> %d\n", x, y, z, m);
  if (m < z) {
    ;
  } else {
    m = z;
  }
  printf("Alpha 3: x -> %d, y -> %d, z -> %d, m -> %d\n", x, y, z, m);
  return m;
}

int main() {
  printf("Hello Lab!\n");
  
  // ejercicio 1
  // Ingresar valores x,y,z
  int x, y, z;

  printf("Ingrese x:\n");
  scanf("%d", &x);

  printf("Ingrese y:\n");
  scanf("%d", &y);

  printf("Ingrese z:\n");
  scanf("%d", &z);

  // llamadas ejercicio 1
  // printf("Sumar y añadir uno; %d\n",sumAndAddOne(x,y));
  // printf("Multiplicar y Sumar ; %d\n",multiplyAndAdd(x,y,z));
  // printf("Igual a Modulo ; %d\n", equalsModule(x,y));
  // printf("division por doble ; %d\n", divideByDouble(x,y));
  // printf("menor que multiplo ; %d\n", lessThanMultiplication(x,y,z));

  // ejercicio 2

  // Ingresar bools
  int b, w;

  printf("Ingrese b:\n");
  scanf("%d", &b);

  printf("Ingrese w:\n");
  scanf("%d", &w);

  // Llamadas
  // printf("x %% 4 == 0; %d\n", isModuleOfFour(x));
  // printf("x + y == 0 && y - x == (-1) * z; %d\n", sumEqualsCeroAndSubstractionEqualsNegativeZ(x,y,z)); 
  // printf("not b && w; %d\n", notTwoValues(b,w)); 


  // ejercicio 3

  // llamadas 3.a)
  // setFive(x);
  // sumAndDouble(x,y);
  // doubleAndSum(x,y);

  // 3.b)
  printf("Assert x: 1, y: 5\n");
  // assert(x==1);
  // assert(y==5);
  // setFive(x);
  // sumAndDouble(x,y);
  // doubleAndSum(x,y);

  // ejercicio 4
  int m;

  printf("Ingrese m:\n");
  scanf("%d", &m);
  // 4.a)
  
  exerciseEAndF(x,y);

  //4.b)
  smallest(x,y,z,m);
  // El valor final de _m_ va a ser el mas pequeno entre x,y,z
  return 0;
}

// x = 7, y = 3, z = 5
// Sumar y añadir uno; 11
// Multiplicar y Sumar ; 55
// Igual a Modulo ; 0
// division por doble ; 7
// menor que multiplo ; 1

// x = 7, y = 3, z = 5
// Sumar y añadir uno; 12
// Multiplicar y Sumar ; 499
// Igual a Modulo ; 0
// division por doble ; 5
// menor que multiplo ; 0

// ¿En la ultima expresion, que tipo tiene el resultado en lenguaje “C”?
// Tiene resultado int, lo se rarisimo, cuando hicieron C aun Cristobal Colon no habia descubierto los booleanos. pero el 0 = False, 1 = True

// 2. 
// Mis valores para que se cumpla la tabla son:
// x:= 4, y:= (-4), z:= 8, b:= 1, w:= 1
