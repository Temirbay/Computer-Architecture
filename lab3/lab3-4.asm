	.data
str: .asciiz "Enter an integer:\n"
endl: .asciiz "\n"

	.text
	.globl main
main:
	
	li $t0, 1
	li $t1, 1
	
	li $s0, 2
	li $t2, 1
	
	li $v0, 4
	la $a0, str
	syscall
	
	li $v0,5
        syscall
        move $s1, $v0
        
        addi $s1, $s1, -1
        
fibonacci:
	bgt $s0, $s1, end
	
	add $t2, $t1, $t0
	move $t0, $t1
	move $t1, $t2
	
	
	addi $s0, $s0, 1
	
	j fibonacci	

end:
	li $v0, 1
	la $a0, ($t2)
	syscall

	li $v0, 10
	syscall


