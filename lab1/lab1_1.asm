.data
    buffer: .space 20
    ask1:  .asciiz "What is your name?\n"
    ask2:  .asciiz "What is your age?\n"
    str1:  .asciiz "Hello, "
    str2: .asciiz "Your age is "
    str3: .asciiz " after 4 years"

.text

main:
    la $a0, ask1  
    li $v0, 4
    syscall

    li $v0, 8      

    la $a0, buffer 
    li $a1, 20     

    move $t0, $a0  
    syscall

    
    la $a0, ask2    
    li $v0, 4
    syscall
    
    li  $v0, 5     
    syscall
    
    move $t1, $v0
    addi $t1, $t1, 4

    la $a0, str1    
    li $v0, 4
    syscall

    la $a0, buffer  
    move $a0, $t0   
    li $v0, 4       
    syscall

    la $a0, str2    
    li $v0, 4
    syscall	

    li $v0, 1
    move $a0, $t1
    syscall
    
    la $a0, str3
    li $v0, 4
    syscall

    li $v0, 10      
    syscall