.data
filename:	.space 32
fnlength:	.word 9
prompt1:	.asciiz "Enter a filename: "
buffer:         .space 128

	.text
		li $v0,4 			#prompt user for filename
		la $a0,prompt1
		syscall

		li $v0,8			#read in filename string &
		la $a0,filename  		 #store in memory
		lw $a1,fnlength
		syscall

		li $v0, 13	   	 #open file 
		la $a0,filename		 #$a0 = addr of filename string
		li $a1,0	   		 #set mode to read
		li $a2,0	   
		syscall

		move $s6,$v0 		  #save file descriptor in $s6

	#put code here to read a character from the file

		li   $v0, 14       
		move $a0, $s6     
		la   $a1, buffer   
		li   $a2, 16    
		syscall           
	
	#put code here to print the character to the console
		li  $v0, 4       
		la  $a0, buffer     
		syscall          
	
		li $v0, 16	#close the file
		move $a0,$s6
		syscall
			
		li $v0,10		#exit
		syscall
