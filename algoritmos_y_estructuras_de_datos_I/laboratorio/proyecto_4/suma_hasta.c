#include <stdio.h>
#include <assert.h>

int pedir_entero(char * nombre) {
  int x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%d", &x);
  return x;

}

int suma_hasta(int n){
  n = n * (n + 1) / 2;
  return n;
}

int main()
{
  int x = pedir_entero("x");

  if (x < 0)
  {
    printf("Flaco, tiene que ser positivo no sabias???\n");
    printf("Proba de nuevo.\n");
    main();
  } else {
  printf("%d\n", suma_hasta(x));
  }

  return 0;
}
