	.data
name: .asciiz "miRas"
surname: .asciiz "temirbay"
endl: .asciiz "\n"

name_size: .byte 5
surname_size: .byte 8

ascii: .byte 0

	.text
	.globl main
main:
	li $t0, 0
	lb $t1, name_size
	
	li $t2, 0
	lb $t3, surname_size
	
toupper_name:
	
	beq $t0, $t1, toupper_surname
	
	lb $t4, name($t0)
	
	addi $t4, $t4, -32
	sb $t4, name($t0)
	
	addi $t0, $t0, 1
	
	j toupper_name
	
toupper_surname:
	
	beq $t2, $t3, done
	
	lb $t4, surname($t2)
	addi $t4, $t4, -32
	sb $t4, surname($t2)
	
	addi $t2, $t2, 1
	
	j toupper_surname

done: 
	li $v0, 4
	la $a0, name
	syscall
	
	li $v0, 4
	la $a0, endl
	syscall
	
	li $v0, 4
	la $a0, surname
	syscall
	
	li $v0, 10
	syscall
	