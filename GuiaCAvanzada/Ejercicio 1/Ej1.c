#include <stdio.h>

typedef struct {
    int vida;
    int ataque;
    int defensa;
    char* nombre;
} mounstro_t;

void evolution(mounstro_t* mounstro){
    mounstro->vida += 10;
    mounstro->defensa += 10;

}

int main(){
    mounstro_t monsters[] = {{10,5,2,"Zombi"},{{1000,1000,1000,"Titan"}}};

}