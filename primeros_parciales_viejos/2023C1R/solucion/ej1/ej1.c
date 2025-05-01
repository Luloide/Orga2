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
    int res = 0; // inicializo como que no esta en la lista
    for(int i = 0; i < n; i++){
        if(comercio != lista_comercios[i]){
            continue;
        }
        res = 1;
    }
    return res;

}

pago_t** blacklistComercios(uint8_t cantidad_pagos, pago_t* arr_pagos, char** arr_comercios, uint8_t size_comercios){
    // primero deberia contar cuantos pagos fueron hechos por comercions en blacklist asi pido bien la memoria
    int pagos = 0;
    for(int i = 0; i < cantidad_pagos; i++){
        if(en_blacklist(arr_pagos[i].comercio, arr_comercios, size_comercios)){
            pagos++;
        }
    }
    pago_t **pagosBlacklist = calloc(pagos, sizeof(pago_t));
    int j = 0;
    //itero sobre los pagos devuelta y los que son blacklist lo agrego
    for(int i = 0; i < cantidad_pagos; i++){
        if(en_blacklist(arr_pagos[i].comercio, arr_comercios, size_comercios)){
            pagosBlacklist[j] = &arr_pagos[i];
            j++;
        }
    }
    return pagosBlacklist;
}


