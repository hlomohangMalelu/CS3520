.data
numbers:
    .word 10,20,22,40,27

.text

main:
    la x5, numbers      #base address
    li x6, 0        #i = 0
    li x7, 0        #count = 0
    li x28, 5   #n = 5

    LOOP:
        bge x6, x28, END

        lw x29, 0(x5)

        andi x29, x29, 1

        bne x29, x0, NOT_EVEN

        addi x7, x7, 1      #count ++

        addi x5, x5, 4      #address for the next integer -> for numbers[i+1]

        NOT_EVEN:

        addi x6, x6, 1
        j LOOP

    END:
        mv a0, x7
        li a7, 10
        ecall

        li a7, 10
        ecall    




