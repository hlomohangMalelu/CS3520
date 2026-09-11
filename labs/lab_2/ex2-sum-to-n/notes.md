# Notes

## What the program does
The program calculates the sum of all integers from `1` to `n` using a `while` loop.
Here, `n = 5`, so it calculates `1 + 2 + 3 + 4 + 5 = 15` and prints `15`.

The RISC-V program uses a loop to add the current value of `i` to `total`, increments `i`, and repeats until `i` is greater than `n`.

## Registers
- `x5` — holds `i`, starting at `1`
- `x6` — holds `n`, which is `5`
- `x7` — holds `total`, starting at `0`
- `a0` — holds the final value to be printed
- `a7` — holds `1`, the system call number for printing an integer

## Anything harder than expected
The loop condition was the hardest part because the RISC-V branch instruction checks whether `n < i` to determine when to exit. The loop must also increment `i` after each addition so that it eventually reaches the end condition.
