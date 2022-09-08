// Segmento de código
.text
	// Inicialização
	init:
		bun main
		.align 5
        
     // r2 = aux
     // r3 = iterador i
     // r4 = iterador k
     // Funcao ordem normal dos numeros    
    ordemNormal:
    	mov r10, 1
        ret
        
        
    // Funcao Bubble sort
    bbSort:
    	cmpi r3, 2
        // Caso seja igual pula para o ret. Se nao for, continua
        beq 4
        s8 [r1+0], r7
        addi r7, r7, 1
        addi r3, r3, 1
        bun -6
        ret
    	
   
	// Função principal
	main:
    	mov sp, 0x7FFC
        l32 r1, [terminal]
        mov r3, 0
        mov r4, 0
        mov r5, 3
        mov r6, 1
        mov r7, 2
        
        call ordemNormal
        call bbSort
        
		// Finalização da execução
		int 0

.data
	vetor:
    	.fill 12
        
    terminal:
    	.4byte 0x8888888B
