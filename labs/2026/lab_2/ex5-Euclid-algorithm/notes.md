# Notes

## What the program does

The program calculates the Greatest Common Divisor (GCD) of two integers using Euclid's algorithm. It starts with `a = 48` and `b = 12` and prints `12`, which is the GCD of the two numbers.

The RISC-V program passes the two numbers to the `gcd` procedure using registers `a0` and `a1`. It repeatedly calculates the `remainder` and updates the values until `a1` becomes `0`. The GCD is then returned in `a0`.

## Registers

- `a0` — holds the first number and eventually the GCD.

- `a1` — holds the second number and then the remainder.

- `t0` — temporarily stores the remainder of `a0 % a1`.

- `ra` — holds the return address for the `gcd` procedure.

- `a7` — holds the system call number: `1` for printing an integer and `10` for exiting the program.


## Anything harder than expected
The hardest part was understanding how the two numbers change during each loop. The remainder is stored in t0, then `a0` is updated with the old value of `a1`, and `a1` receives the remainder. When `a1` becomes `0`, `a0` contains the GCD, and the procedure returns to main.