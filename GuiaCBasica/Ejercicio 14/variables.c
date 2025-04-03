#include<stdio.h>
int a = 20;

int main(){
    a = 10;
    printf("%i",a);
    return 0;
    // lo que pasa es que la variable local pisa el valor de la variable global
}