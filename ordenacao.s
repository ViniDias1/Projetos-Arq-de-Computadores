// Segmento de código
.text
	// Inicialização
	init:
		bun main
		.align 5
        
     lerIN:
     	// r16 -> Iterador
		// r17 -> IN
     	mov r8, vetor
        mov r16, 0
     	cmpi r16, 399
        beq 6
        l8 r17, [r1]
        s8 [r8], r17
        s8 [r1], r17
        addi r8,r8,1
        addi r16,r16,1
        bun -8
		ret
     
    // Funcao Bubble sort
    bbSort:
        cmpi r3, 99
        mov r2,0
        mov r8, vetor
        beq 20
        mov r9, vetor
        //FOR INTERNO
        cmpi r4, 99
        beq 12
        l32 r10,[r8]   
		addi r8, r8, 4 
        l32 r11,[r8] 
        cmp r10,r11
        bgt 1
        bun 3
        s32 [r9],r11
        s32 [r9+4],r10
        mov r2,1
        addi r9,r9,4
        addi r4,r4,1
        bun -14
        cmpi r2, 0
        beq 3
        addi r3,r3,1
        mov r4, 0
        bun -24
        ret
        
    imprimirBBSORT:
    	mov r20,0
        cmpi r20, 400 
        beq 5 
        l8 r10, [r8]  
        s8 [r1], r10      
        addi r8, r8, 1
        addi r20,r20,1
        bun -7     
        ret
   
	// Função principal
	main:
    
    	mov sp, 0x7FFC
        l32 r1, [terminal]
        mov r3, 0	
        mov r4, 0
        
        //leitura do IN para o TERMINAL
        call lerIN
        //ordena o vetor
        call bbSort
        call imprimirBBSORT
		// Finalização da execução
		int 0

.data
    terminal:
    	.4byte 0x8888888B
    vetor:
    	.fill 400
        
