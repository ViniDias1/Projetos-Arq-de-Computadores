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
    imprimirORDEMNORMAL: 
    	mov r8, vetor 
        l32 r10, [r8]  
        cmpi r10, 0        
        beq 3       
        s32 [r1], r10      
        addi r8, r8, 4  
        bun -6        
        ret
        
        
    // Funcao Bubble sort
    
    bbSort:
    	cmpi r3, 19
        mov r7, vetor
        mov r8, vetor
        mov r9, vetor
        beq 20
        cmpi r4, 19
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
        l32 r10, [r8]  
        cmpi r10, 0        
        beq 3       
        s32 [r1], r10      
        addi r8, r8, 4  
        bun -6        
        ret
   
	// Função principal
	main:
    	mov sp, 0x7FFC
        l32 r1, [terminal]
        mov r2,0
        mov r3, 0
        mov r4, 0
        //call imprimirORDEMNORMAL
        call bbSort
        call imprimirBBSORT
        
		// Finalização da execução
		int 0

.data
	
    terminal:
    	.4byte 0x8888888B
    vetor:
    	//.fill 3, 4, 0xABCDEF01
    .4byte 0x0000000A,0x00000009,0x00000008,0x00000007,0x00000006,0x00000005,0x00000004,0x00000003,0x00000002,0x00000001,0x000000E3,0x000000F2,0x0000000A2,0x0000000D9,0x0000000B1,0x000000C7,0x000000F5,0x000000A1,0x000000B4,0x000000F6


        
        
        
        
        
