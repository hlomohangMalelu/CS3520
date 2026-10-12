main:
    li a0, 3
    
    jal ra factorial
    
    li a7, 1
    ecall
    
    li a7, 10
    ecall
    
    

factorial:
        add t0, a0, x0
        li t1,1
        loop:
            beq t0, t1, end
            
            addi t0,t0,-1
            mul a0, a0,t0
            
            j loop
         end:
             ret
