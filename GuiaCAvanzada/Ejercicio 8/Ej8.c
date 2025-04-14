#include <stdio.h>

int main(){
    char string[] = "hola";
    int i = 0;
    while (string[i] != '\0'){
        string[i] -= 32;
        i++;
    }
    
    printf("string uppercase: %s\n", string);
    return 0;
}