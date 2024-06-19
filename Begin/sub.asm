.data 
	# .data e uma area para os dados na memoria
	espaco: .asciiz " "

.text
	# .text indicA as instrucoes do programa
	li $t1, -75
	li $t2, 25
	
	# Exemplo de subtracao negativa
	sub $s0, $t1, $t2
	    #t0 = -75 - (-25) = -50
	    #t0 = 70 - (-25) = 100
	    #t0 = 70 - 25 = 50

	subi $s1, $t1, -25
	
	li $v0, 1
	move $a0, $s0
	syscall 
	
	li $v0, 4
	la $a0, espaco
	syscall 
	
	li $v0, 1
	move $a0, $s1
	syscall 
	

	li $v0, 10 # Finaliza o programa manualmente
	syscall # program is finished running