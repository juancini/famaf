#include <stdio.h>
#include <assert.h>

int pedir_arreglo(int n_max, int a[]) {
  int x;
  printf("Me pasas el array broder?:\n");
  for(int i = 0; i < n_max; i++){
       printf("%d:", i);
       scanf("%d", &a[i]);
    }
  return x;
}

int main(){
  // Start
  return 0;
}