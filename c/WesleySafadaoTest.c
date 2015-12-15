#include <stdio.h>
#include "WesleySafadao.h"

int main(){
  float *a = getCalc(30, 10, 94);
  printf("Você é %0.2f%% safado e %0.2f%% anjo \n", a[0], a[1]);
  return 0;
}


