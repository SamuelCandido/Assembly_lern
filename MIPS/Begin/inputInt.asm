# Escreva um program que le uma idade e imprime

.data 
	# .data e uma area para os dados na memoria
	entrada: .asciiz "Forneca sua idade: "
	saida: .asciiz "Sua idade é "

.text
	# .text indicA as instrucoes do programa
	li $v0, 4
	la $a0, entrada
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	
	li $v0, 4
	la $a0, saida
	syscall

	li $v0, 1
	move $a0, $s0
	syscall	

	li $v0, 10 # Finaliza o programa manualmente
	syscall # program is finished running