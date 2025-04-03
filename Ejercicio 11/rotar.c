#include <stdio.h>
#define N 4

int main(){
    int b[N] = {1,2,3,4};
    int a[N];
    a[N-1] = b[0];
    int j = N-2;
    for(int i = N - 1; i != -1; i--){
        a[j] = b[i];
        j--;
    }
    for(int i = 0; i < N; i++){
        printf("%i\n", a[i]);
    }
    
    return 0;
}