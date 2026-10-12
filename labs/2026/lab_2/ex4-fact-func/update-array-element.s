.data
numbers:
    .word 10, 20, 30, 40, 50   # Array of 5 integers

.text
main:
    la a0, numbers             # Load array base address
    li a1, 0                   # Set index i = 0

    jal ra, updateArrayElement                # Call function updateArrayElement

    li a7, 10                  # Exit program
    ecall

updateArrayElement:
    slli a1, a1, 2             # Calculate offset: i * 4
    add a1, a0, a1             # Calculate address of numbers[i]

    lw t0, 0(a1)               # Load numbers[i] into t0
    addi t0, t0, 10            # Add 10 to the value
    sw t0, 0(a1)               # Store updated value in array

    lw a0, 0(a1)               # Load updated value for printing
    li a7, 1                   # Print integer
    ecall

    ret                        # Return to main