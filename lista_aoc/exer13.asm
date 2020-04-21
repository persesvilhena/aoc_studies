.data
vetor: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 99999
.text
	la $s0, 0 #endereco base do vetor
	li $t2, 0 #soma os elemetoins
	
	loop:
		lw $t2, vetor($s0)
		add $t3, $t3, $t2
		addi $s0, $s0, 4
		bne $t2, $zero, loop
		