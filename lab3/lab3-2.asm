	.data
str: .asciiz "Enter a value:"
str2: .asciiz "The sum is:"

	.text
	.globl main
main:
	li $t1, 1
	li $t2, 5
	
loop: 
	bgt $t1, $t2 loopend
	
	addi $t1, $t1, 1
	
	li $v0, 4
	la, $a0, str
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	add $t3, $t3, $t0
	
	j loop
	
loopend:
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	li $v0, 10
	syscall
	
	
