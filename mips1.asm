.data
.text
.main:
	#Primeiro C?digo
	li $s1,2147483647	#g
	li $s2,50	#h
	li $s3,25	#i
	li $s4,10	#j


	add $t0,$s1,$s2 # $t0 cont?m g + h
	add $t1,$s3,$s4 # $t1 cont?m i + j
	sub $s0,$t0,$t1 # f recebe $t0 - $t1 ou (g + h) ? (i + j)