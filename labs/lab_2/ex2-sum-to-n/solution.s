.data
n: .word 5
msg: .string "Total: "

.text

main:
    li x5, 1    # i = 1
    lw x6, n    # upper bound n = 5
    li x7,0     #total = 0

    LOOP:
        blt x6, x5, END     #if i > 5, exit
        add x7, x7, x5      # total += i
        addi x5, x5, 1      #i++

        j LOOP  #repeat

    END: 
        #print msg
        la a0, msg
        li a7, 4
        ecall

        # Print total
        mv a0, x7
        li a7, 1
        ecall

        #exit programm
        li a7, 10
        ecall

        
