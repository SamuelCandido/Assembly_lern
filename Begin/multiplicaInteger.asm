.data 
	# .data e uma area para os dados na memoria
	espaco: .asciiz " "

.text
	# .text indicA as instrucoes do programa
	li $t0, 10
	li $t1, 5
	li $t2, 2
	
	mul $s0, $t0, $t1
	sll $s1, $t0, 10 # Shift left logico, = s * 2 elevado a k 
	
	li $v0, 1 # Na IDE mars se vc ir no help em syscall ele mostra qual o valor vc deve atribuir a qual registrador para indicar o tipo de dado
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