global acumuladoPorCliente_asm
global en_blacklist_asm
global blacklistComercios_asm

extern calloc

;########### SECCION DE TEXTO (PROGRAMA)
section .text


acumuladoPorCliente_asm:
	;prologo
	push RBP
	mov RBP, RSP
	push RBX
	push R12 ; alineada

	; guardo en los registros no volatiles el array de pago y la cantidad de pagos
	mov RBX, RDI ; cantidad de pagos
	mov R12, RSI ; puntero a pagos

	;en primer lugar debo de pedir memoria a malloc
	mov RDI, 10;
	mov RSI, 4
	call calloc ; en rax esta mi puntero a el array de resultados
	xor R8, R8; i = 0

.loop:
	cmp R8, RBX
	je .terminar
	; R12 es mi pago actual
	xor R9,R9; limpio el R9
	xor R10,R10; limpio el R10
	mov R9B, [R12 + 17] ; ragoActual.aprobado
	cmp R9B, 0
	je .proximaIteracion ; si es falso continue
	mov R9B, [R12 + 16] ; ragoActual.cliente
	imul R9, 4
	mov R10B, [R12] ;PagoActual.monto
	add [RAX + R9], R10B

.proximaIteracion:
	add R12, 24; agarro el proximo elemento de la lista de pagos
	inc R8
	jmp .loop

.terminar:
	;epilogo
	pop R12
	pop RBX
	pop RBP
	ret

en_blacklist_asm:
	;prolgo
	push RBP
	mov RBP, RSP
	xor RAX, RAX; inicializo res como 0
	xor R8, R8; i=0

.loop:	
	cmp R8, RDX
	je .terminar
	mov R9, [RSI + R8]
	cmp R9, RDI
	jne .proximaIteracion
	inc RAX

.proximaIteracion:
	inc R8
	jmp .loop

.terminar:
	;Epilogo
	pop RBP
	ret

blacklistComercios_asm:
	; primero contar los pagos que hicieron los comercioes en blacklist para pedir la memoria encesaria
	;prolgo
	push RBP
	mov RBP, RSP
	push R12
	push R13 ;alineado
	push R14
	push R15 ; alineado

	;me guardo mis parametros en registros no volatiles
	mov R12, RDI ; comercio
	mov R13, RSI ;lista comercio
	mov R14, RDX ; n (cant comercios en lista)
	
	xor RAX, RAX; inicializo res como 0

.bublecantPagos:
	cmp R15, R14
	je .guardarPagos
	mov RDI
	mov RSI

.guardarPagos:


.terminar:
	;Epilogo
	pop R15
	pop R14
	pop R13
	pop R12
	pop RBP
	ret

