#include <stdio.h>

int factorial(int n){
    if (n < 0){
        //error
    }
    if (n == 0) {
        return 1;
    } else {
        return (factorial(n-1) * n);
    }
}

int main(){
    int n = 3;
    int res = factorial(n);
    printf("%i", res);
    return 0;
}