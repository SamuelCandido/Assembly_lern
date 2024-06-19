.data 
	# .data e uma area para os dados na memoria
	title: .asciiz "As variaveis podem mudar entao mude as msg: "
	espaco: .asciiz " "
	msg1: .asciiz "10/2= "
	msg2: .asciiz ", 8/3= "
	msg3: .asciiz ", 8/2 elevado a 2= "

.text
	# .text indicA as instrucoes do programa
	li $t0, 10
	li $t1, 2
	li $t2, 8
	li $t3, 3
	
	div $t0, $t1
	mfhi $s0
	mflo $s1
	
	div $t2, $t3
	mfhi $s2
	mflo $s3
	
	srl $s2, $t2, 2 # s/2elevado a k
	
	#Frufru
	li $v0, 4
	la $a0, title
	syscall 
	
	li $v0, 4
	la $a0, espaco
	syscall 
	
	# Primeira operacao
	li $v0, 4
	la $a0, msg1
	syscall 
	
	li $v0, 1 
	move $a0, $s0
	syscall
	
	li $v0, 4
	la $a0, espaco
	syscall 
	
	li $v0, 1
	move $a0, $s1
	syscall 
	
	# Segunda operacao
	li $v0, 4
	la $a0, msg2
	syscall 
	
	li $v0, 1
	move $a0, $s2
	syscall 
	
	li $v0, 4
	la $a0, espaco
	syscall 
	
	li $v0, 1
	move $a0, $s3
	syscall 
	
	# Terceira operacao 
	li $v0, 4
	la $a0, msg3
	syscall 
	
	li $v0, 1
	move $a0, $s2
	syscall 
	

	li $v0, 10 # Finaliza o programa manualmente
	syscall # program is finished running