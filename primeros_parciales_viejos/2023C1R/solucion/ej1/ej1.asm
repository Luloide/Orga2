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
	mov R9B, [R12 + 17] ; ragoActual.aprobado
	cmp R9B, 0
	je .proximaIteracion ; si es falso continue
	mov R9B, [R12 + 16] ; ragoActual.cliente
	imul R9, 4
	mov R9B, [R12] ;PagoActual.monto
	add [RAX + R9], R9B
	
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
	ret

blacklistComercios_asm:
	ret
