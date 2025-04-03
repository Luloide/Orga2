#include<stdio.h>
#include <stdint.h>

int main(){
    int32_t a = 0xA7; // 10100111
    int32_t b = 0x85; //10000101
    int32_t mascA = 0xE0; // con esto conservo los primeros 3 dijitos
    int32_t mascB = 0x7; // con esto conservo los ultimos 3 dijitos
    a = a & mascA;
    b = b & mascB;
    // sinfteo el b 5 espacios para ver si me quedan igual
    b = b << 5;
    if(a == b){
        printf("los primeros 3 dijitos de a son iguales a los ultimos 3 dijitos de b\n");
    }

    return 0;
}