	.data
endl: .asciiz "\n"
str1: .asciiz "Number of numbers:"
str2: .asciiz "Number of letters:"
str3: .asciiz "Number of spaces:"

	.text
	.globl main
main:
	li $t0, 0
	li $t2, 10
	
	li $t5, 0
	li $t6, 0
	li $t7, 0
	
loop:
	li $v0, 12
	syscall
	
	move $t1, $v0
	
	
	beq $t1, $t2, done
	 
	
	li $s0, 47
	li $s1, 58
	slt $t3, $s0, $t1
	slt $t4, $t1, $s1
	mul $t3, $t3, $t4
	addi $t3, $t3, -1
	bgezal $t3, add_num   
	
	li $s0, 64
	li $s1, 91
	slt $t3, $s0, $t1
	slt $t4, $t1, $s1
	mul $t3, $t3, $t4
	addi $t3, $t3, -1
	bgezal $t3, add_letter   
	
	li $s0, 96
	li $s1, 123
	slt $t3, $s0, $t1
	slt $t4, $t1, $s1
	mul $t3, $t3, $t4
	addi $t3, $t3, -1
	bgezal $t3, add_letter   
	
	
	li $s0, 32
	sub $t1, $t1, $s0
	addi $t1, $t1, -1
	bltzal $t1, add_space
		
	j loop
	
add_num:
	addi $t5, $t5, 1
	jr $ra

add_letter:
	addi $t6, $t6, 1
	jr $ra
	
add_space:
	addi $t7, $t7, 1
	jr $ra

done:
	
	li $v0, 4
	la $a0, str1
	syscall
	
	li $v0, 1
	move $a0, $t5
	syscall
	
	li $v0, 4
	la $a0, endl
	syscall
	
	
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 1
	move $a0, $t6
	syscall
	
	li $v0, 4
	la $a0, endl
	syscall
	
	li $v0, 4
	la $a0, str3
	syscall
	
	li $v0, 1
	move $a0, $t7
	syscall

	li $v0, 4
	la $a0, endl
	syscall
	
	li $v0, 10
	syscall