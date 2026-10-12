# Notes

## What the program does
The RISC-V program calculates the factorial of a number using a function. The input is `3`, so it calculates `3 × 2 × 1 = 6` and prints `6`.

The `main` function places 3 in `a0`, calls the `factorial` function, and then prints the result returned in `a0`.

## Registers
- `a0` — holds the input number and the final factorial result
- `t0` — holds a working copy of the input and is decreased each loop
- `t1` — holds `1`, used as the loop stopping condition
- `a7` — holds the system call number (`1` for printing and `10` for exiting)
- `ra` — holds the return address for the function call

## Anything harder than expected
The function call and return were the hardest parts because `jal ra, factorial` saves the return address in `ra`, and `ret` uses that address to return to `main`. Understanding how `a0` changes during each multiplication was also important because it holds the running factorial result.
