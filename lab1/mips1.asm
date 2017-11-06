	.text
	.globl main
main:
	li $to, 'R'
	sb $to, 2(str)
	syscall
	
	.data
str : .ascii "Hello World"

