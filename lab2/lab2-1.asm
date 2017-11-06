	.data
phrase:	.asciiz "Change:inevitable"
addon: .asciiz " except from vending machines"

	.text
	.globl main

main:
	li $v0, 4
	la $a0, phrase
	syscall 

	li $v0,11
	li $a0,'\n'
	syscall

	li $t0, ' '
	la $s0, phrase
	sb $t0, 17($s0)
	
	li $v0, 4
	la $a0, phrase
	syscall

	li $v0,11
	li $a0,'\n'
	syscall

	li $t0, '!'
	la $s0, phrase
	sb $t0, 6($s0)
	
	li $t1, 0
	li $t2, 'r'
	sb $t1,7($s0)
	sb $t2, 3($s0)
	
	li $v0, 4
	la $a0, phrase
	syscall
