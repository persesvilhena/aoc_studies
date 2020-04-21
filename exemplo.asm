li $a0, 1 #g
li $a1, 2 #h
li $a2, 3 #i
li $a3, 4 #j

jal exemplo_folha
move $t0,$v0
li $v0, 1
la $a0,($t0)
syscall 
j Exit


exemplo_folha:
addi $sp, $sp, -12 # cria espa?o para 3 itens na pilha
sw $t1, 8($sp) # empilha $t1
sw $t0, 4($sp) # empilha $t2
sw $s0, 0($sp) # empilha $s0
add $t0, $a0, $a1 # $t0 = g + h
add $t1, $a2, $a3 # $t1 = i + j
sub $s0, $t0, $t1 # f = $s0 = (g+h) ? (i+j)
add $v0, $s0, $zero # retorna f em $v0
lw $s0, 0($sp) # desempilha $s0
lw $t0, 4($sp) # desempilha $t0
lw $t1, 8 ($sp) # desempilha $t1
addi $sp, $sp, 12 # remove 3 itens da pilha
jr $ra # retorna para a subrotina que chamou

Exit:
li $v0, 10
syscall