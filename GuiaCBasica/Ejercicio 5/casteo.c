#include <stdio.h>

int main(){
    float a = 0.1;
    double b = 0.1;

    printf("float: %f\n",a);
    printf("double: %f\n",b);

    int casteadoA = (double) a;
    int casteadoB = (float) b;

    printf("floatCasteadoInt: %i\n",casteadoA);
    printf("doubleCasteadoInt: %i\n",casteadoB);
    return 0;

    // me devolvio 0, 
}
