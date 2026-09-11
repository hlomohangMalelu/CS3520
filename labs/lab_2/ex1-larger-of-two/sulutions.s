data
a: .word 10
b: .word 9
.text

main:
    lw x5,a
    lw x6,b

    bge x5,x6,IF_GREATER
    blt x5,x6,ELSE
    
    IF_GREATER:
        mv x7,x5
        j END_IF
        
    ELSE:
        mv x7,x6
        
    END_IF:   
        mv a0, x7
        li a7,1
        ecall    