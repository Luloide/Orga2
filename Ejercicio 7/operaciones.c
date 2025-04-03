#include<stdio.h>


int main(){
    int a = 5, b = 3, c = 2, d = 1;

    printf("a + b * c / d :%i \n",(a + b * c / d));
    printf("a o/o b : %i\n",(a % b));
    printf("a == b: %x\n", (a == b));
    printf("a != b: %x\n", (a != b));
    printf("a && b: %x\n", (a && b));
    printf("a || b: %x\n", (a || b));
    printf("a << 1: %x\n", (a << 1));
    printf("a >> 1: %x\n", (a >> 1));
    
    return 0;
}