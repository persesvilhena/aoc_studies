.data
.text

.main:

li $s3, 10
li $s4, 10
li $s1, 5
li $s2, 10



beq $s3, $s4, Else
sub $s0, $s1, $s2

j Exit
Else: add $s0, $s1, $s2

Exit: