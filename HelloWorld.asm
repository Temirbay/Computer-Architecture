.data
 	str1: .asciiz "Hello"
 	str2: .asciiz "world"
.text

main:
	li $t0, ' '
	la $s0, str1
	sb $t0, 5($s0)
	
	li $t1, 'W'
	la $s1, str1
	sb $t1, 6($s1)
	 
	li $t2, '!'
	la $s2, str1
	sb $t2, 11($s2)
	
	li $v0, 4
	la $a0, str1
	syscall
