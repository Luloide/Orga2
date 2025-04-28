; /** defines bool y puntero **/
%define NULL 0
%define TRUE 1
%define FALSE 0

section .data

section .text

global string_proc_list_create_asm
global string_proc_node_create_asm
global string_proc_list_add_node_asm
global string_proc_list_concat_asm

; FUNCIONES auxiliares que pueden llegar a necesitar:
extern malloc
extern free
extern str_concat


string_proc_list_create_asm:
    ; pido memoria para la lista en total tiene que ser 16
    mov RDI, 16
    call malloc
    ; inicializo los punteros a first y last como null
    mov qword [RAX], 0        ; lista->first = NULL
    mov qword [RAX + 8], 0    ; lista->last = NULL
    ret

string_proc_node_create_asm:
    ; prologo
    push RBP
    ;me guardo type y char en dos registros no volatiles
    push RDI
    push RSI
    ;mov R8, RDI ;type
    ;mov R9, RSI ;hash
    ; pido memoria para la lista en total tiene que ser 32
    mov RDI, 32
    call malloc
    pop RSI
    pop RDI
    ; inicializo los dos punteros a null y establezco type y hash
    mov qword [RAX], 0        ; next = NULL
    mov qword [RAX + 8], 0    ; previous = NULL
    mov qword [RAX + 16], RDI    ; type = type
    mov qword [RAX + 24], RSI    ; hash = hash

    ;epilogo
    pop RBP
    ret

string_proc_list_add_node_asm:
    ;proloho
    push RBP
    ; me guardo el puntero a la lista y muevo a rsi y rdi el type y hash
    mov RCX, RDI
    push RCX
    mov RDI, RSI
    mov RSI, RDX
    ; creo el nuevo nodo
    call string_proc_node_create_asm; en RAX tengo el puntero al nuevo nodo
    pop RCX
    mov R9, [RCX + 8]; agarro el puntero al nodo al last
    ; si la lista es vacia pongo al nuevo nodo como first y last
    cmp R9, 0 ; chequeo si es nulo
    je .casolistaVacia
    ;si la lista no es vacia modifico el nodo ultimo actual para que apunte alnuevo nodo
    mov qword [R9], RAX ; modifico next a el nuevo nodo
    ; pongo como last al nuevo nodo
    mov qword [RCX + 8], RAX;
    jmp .terminar 

.casolistaVacia:
    mov qword [RCX], RAX
    mov qword [RCX + 8], RAX
    jmp .terminar
.terminar:
    ; restauro el puntero a la lista
    mov RDI, RCX
    ;epilogo
    pop RBP
    ret

string_proc_list_concat_asm:
    ;prologo
    push RBP
    ; establezco a RAX como vacio
    xor RAX, RAX
    ;agarro el primer nodo de la lista y pongo como next_node como null
    mov R8, [RDI] ; current node
    mov R9, 0 ; next node

.loop:
    ; mientras el current node no sea null
    cmp R8, 0
    je .terminar
    ; cagarro el proximo nodo
    mov R9, [R8]
    ; verifico si es type es igual al que buscabamos
    cmp [R8 + 16], RSI
    je .tiposIguales
    mov R8, R9 ; current node = next node
    jmp .loop

.tiposIguales:
    push RDI
    push RSI
    push RDX

    mov RDI, RAX
    mov RSI, [R8 + 16]
    call str_concat

    pop RDX
    pop RSI
    pop RDI
    mov R8, R9 ; current node = next node
    jmp .loop

.terminar:
    ;epilogo
    pop RBP
    ret
