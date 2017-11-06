	.text
	.globl main
	
main: 
	li $t0, 1
	li $t1, 6   #a
	li $t2, 0   #b
	jal sum
	li $v0, 1
	move $a0, $t2
	syscall
	li $v0, 10
	syscall
	
sum:
       addi $sp, $sp, -4
       sw $ra, ($sp)

loop:
	bgt, $t0, $t1, loopend
	add $t2, $t2, $t0
	addi $t0, $t0, 1
	j loop	

loopend: 
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra