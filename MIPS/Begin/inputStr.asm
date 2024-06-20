.data 
	entrada: .asciiz "Qual é seu nome? "
	saida: .asciiz "Ola, "
	space: .space 25
.text

	li $v0, 4
	la $a0, entrada
	syscall
	
	li $v0, 8
	la $a0, space # Se atribuir a leitura da entrada em algum registrador, voce pode chamala depois em outro momento
	la $a1, 25
	syscall
	
	
	li $v0, 4
	la $a0, saida
	syscall
	
	li $v0, 4
	la $a0, space
	syscall
	



