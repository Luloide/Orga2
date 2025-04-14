#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char* name;
    int edad;
} persona_t;

persona_t* crearPersona(char* nombre, int edad){
    persona_t *persona = malloc(sizeof(persona_t));

    persona->name = malloc(strlen(nombre) + 1);
    strcpy(persona->name, nombre);
    persona->edad = edad;
    return persona;
}

void eliminarPersona(persona_t* persona){
    free(persona->name);
    free(persona);
}

int main(){
    persona_t *person = crearPersona("pepe", 31);
    printf("nombre: %s\n", person->name);
    printf("edad: %i\n", person->edad);
    eliminarPersona(person);
}