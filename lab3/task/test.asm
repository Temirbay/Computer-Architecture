# this is a test program 
    	
main  add $2,$1,$1
  add $3,$0,$2   
  add $3,$3,$3 
  add $4,$3,$0 
  
loop  beq $3,$0,done  #here is the loop 
  sub $3,$3,$1 
  j loop 
 
done  sw $2,0($0) 
  lw $a,-2($4)
