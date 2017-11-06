	.data
str: .asciiz "  "

	.text
	.globl main
main:
	li $v0, 5
	syscall

	move $t0, $v0
	move $a0, $t0
	
	li $v0, 34
	syscall

	li $v0, 4
	la $a0, str 
	syscall
	
	li $v0, 35
	move $a0, $t0
	syscall 
	li $v0, 4
	la $a0, str 
	syscall

	li $v0, 36
	move $a0, $t0
	syscall 
