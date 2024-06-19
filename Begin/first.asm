.data 
	# .data e uma area para os dados na memoria
	mensagem: .asciiz "Hello word"


.text
	# .text indicA as instrucoes do programa
	li $v0, 4
	la $a0, mensagem # endereco esta recebendo a variavel
	syscall 

