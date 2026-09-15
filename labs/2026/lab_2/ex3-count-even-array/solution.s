.data
numbers:
    .word 10,20,22,40,27

.text

main:
    la x5, numbers      #load base address of numbers i.e numbers[i]
    li x6, 5            #n = 5
    li x7, 0            #i = 0  
    li x28, 0           #count = 0
    li x29, 2           #divisor

    LOOP:
        bge x7,x6, END      #if i >= 5 , exit the loop(jump to END)
        
        #accessing numbers[i]
        slli x30,x7,2        #calculate offset
        add x30,x5,x30        #address of numbers[i]
        lw x30, 0(x30)         #load the value at numbers[i]

        rem x30,x30,x29       # i % 2
        
        beq x30, x0, IF_EQUAL    # i % 2 == 0?
        j END_IF    #jump to END_IF if false

        IF_EQUAL:
            addi x28, x28, 1      #count ++
            j END_IF

        END_IF:
            addi x7, x7, 1      # i ++
            j LOOP      #repeat
    
    END:
        #print count
        mv a0, x28
        li a7, 1
        ecall

        #exit program
        li a7, 10
        ecall