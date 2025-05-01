#include "ej1.h"

uint32_t* acumuladoPorCliente(uint8_t cantidadDePagos, pago_t* arr_pagos){
    // creo mi array de resultados
    uint32_t *resultado = calloc(10, sizeof(uint32_t));
    for(int i =0; i < cantidadDePagos; i++){
        pago_t pagoActual = arr_pagos[i];
        // me fijo si este pago fue aprobado
        if(pagoActual.aprobado == 0){
            continue;
        }
        int cliente = pagoActual.cliente;
        resultado[cliente] += pagoActual.monto;
    }
    return resultado;
}

uint8_t en_blacklist(char* comercio, char** lista_comercios, uint8_t n){
}

pago_t** blacklistComercios(uint8_t cantidad_pagos, pago_t* arr_pagos, char** arr_comercios, uint8_t size_comercios){
}


