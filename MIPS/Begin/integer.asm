.data 
	# .data e uma area para os dados na memoria
	espaco: .asciiz " "

.text
	# .text indicA as instrucoes do programa
	
	# Atribui valores aos registradores
	li $t0, 10
	li $t1, 5
	addi $t2, $zero, 5 # Voce pode fazer um addi, com o mesmo principio que um li, ja que o $zero nao soma nada
	
	# Soma os registradores
	add $s0, $t0, $t1 # Soma registradores apenas
	addi $s1, $t1, 10 # Aceita colocar um inteiro
	
	#  Imprime oque ta em s0
	li $v0, 1 #1 para inteiros 
	move $a0, $s0
	syscall 
	
	# Da uma tabulacao/espaco entre os inteiros
	li $v0, 4 # 4 para strings/chars
	la $a0, espaco
	syscall
	
	# Imprime oque ta em s0
    	li $v0, 1 
   	 move $a0, $s1
    	syscall       



	li $v0, 10 # Finaliza o programa manualmente
	syscall # program is finished running