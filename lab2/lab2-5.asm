	.text
	.globl main
	
main:   
	li $v0,33
	li $a0,79
	li $a1,700
	li $a2, 24
	li $a3, 120
	syscall
	
	li $v0,33
	li $a0,67
	li $a1,700
	li $a2, 24
	li $a3, 120
	syscall

