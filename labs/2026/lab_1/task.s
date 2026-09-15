.data
a: .word 7
b: .word 5
c: .word 20
.text
main:
    lw x5, a
    lw x6, b
    lw x7, c
    add x8, x5, x6
    slli x8, x8, 3
    sub x8, x8,x7
    mv,a0, x8
    li, a7, 1
    ecall
    
    
    