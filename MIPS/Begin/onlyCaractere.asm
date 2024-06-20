.data 
	# .data e uma area para os dados na memoria
	caracter: .byte 'C'


.text
	# .text indicA as instrucoes do programa
	li $v0, 4 # Pede para imprimir
	la $a0, caracter # endereco esta recebendo a variavel
	syscall # program is finished running (dropped off bottom)




	li $v0, 10 # Finaliza o programa manualmente
	syscall # program is finished running