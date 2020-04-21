.data
.text

.main:

li $s1, 5




bge $s1, 6, rot
li $s0, 0

j Exit
rot: li $s0, 1

Exit: