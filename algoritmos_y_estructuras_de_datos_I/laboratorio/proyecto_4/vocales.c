#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

int pedir_letra(char * nombre) {
  char x;
  printf("Que valor de %s hoy?\n", nombre);
  scanf("%c", &x);
  return x;
}

bool es_vocal (char letra) {
  char vocales[] = {'a', 'e', 'i', 'o', 'u',
                    'A', 'E', 'I', 'O', 'U'};
  
  for (int i = 0; i < 9; i++)
  {
    if (letra == vocales[i])
    {
      return true;
    }
    
  }
  
  return false;
}
int main(){
  // Start
  char letra = pedir_letra("letra");

  printf("%d\n", es_vocal(letra));
  
  return 0;
}
