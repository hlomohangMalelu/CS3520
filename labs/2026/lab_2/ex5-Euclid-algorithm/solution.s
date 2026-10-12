main:
    li a0, 48          # Load the first integer into a0
    li a1, 12          # Load the second integer into a1

    jal ra, gcd        # Call gcd procedure; save return address in ra

    # Print the GCD stored in a0
    li a7, 1           
    ecall              

    #exit program
    li a7, 10          
    ecall              


gcd:
    LOOP:
        beq a1, x0, EXIT  # If a1 == 0, the GCD is in a0

        rem t0, a0, a1    # Calculate remainder: a0 % a1; store in t0

        mv a0, a1         # Move the second integer into a0
        mv a1, t0         # Move the remainder into a1

        j LOOP            # Repeat the loop


    EXIT:
        ret               # Return to main with the GCD in a0