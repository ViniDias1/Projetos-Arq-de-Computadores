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
        beq 5
        l8 r17, [r1] 
        s8 [r8], r17
        addi r8,r8,1
        addi r16,r16,1
        bun -7
		ret
     
    // Funcao ordem normal dos numeros    
    imprimirORDEMNORMAL: 
    	mov r8, vetor 
        l8 r10, [r8]  
        cmpi r10, 0        
        beq 3       
        s8 [r1], r10      
        addi r8, r8, 1
        bun -6        
        ret
        
    // Funcao Bubble sort
    bbSort:
    	cmpi r3, 399
        mov r7, vetor
        mov r8, vetor
        mov r9, vetor
        beq 20
        cmpi r4, 399
        beq 15
        l32 r10,[r8]   
		addi r8, r8, 4 
        l32 r11,[r8] 
        cmp r10,r11
        bgt 1
        bun 5
       	mov r2, r10
        mov r10, r11
        mov r11, r2
        s32 [r9],r10
        s32 [r9+4],r11
        addi r9,r9,4
        addi r4,r4,1
        addi r7,r7,1
        bun -17
        addi r3,r3,1
        mov r4, 0
        bun -25
        ret
        
    imprimirBBSORT:
    	mov r8, vetor 
        l8 r10, [r8]  
        cmpi r10, 0        
        beq 3       
        s8 [r1], r10      
        addi r8, r8, 1 
        bun -6        
        ret
   
	// Função principal
	main:
    
    	mov sp, 0x7FFC
        l32 r1, [terminal]
        mov r2, 0
        mov r3, 0
        mov r4, 0
        
        //leitura do IN para o TERMINAL
        call lerIN
        //ler o numeros do vetor na ordem normal
        call imprimirORDEMNORMAL
        //ordena o vetor
        call bbSort
        //ler o vetor ordenado
        call imprimirBBSORT
        
		// Finalização da execução
		int 0

.data
    terminal:
    	.4byte 0x8888888B
    vetor:
    	.fill 400
    


        
        
        
        
        
