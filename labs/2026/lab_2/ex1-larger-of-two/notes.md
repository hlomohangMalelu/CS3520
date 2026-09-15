# Notes

## What the program does
The program compares two integers, `a` and `b`, and prints the larger value.  
Here, `a = 7` and `b = 9`, so the program prints `9`.

The RISC-V program loads both values, compares them using branch instructions, stores the larger value in `x7`, and then uses `ecall` to print it.

## Registers
- `x5` — holds the value of `a`
- `x6` — holds the value of `b`
- `x7` — holds the larger value after the comparison
- `a0` — holds the value to be printed
- `a7` — holds `1`, the system call number for printing an integer

## Anything harder than expected
The branching was the hardest part because the C++ `if/else` structure has to be translated into labels and branch instructions. It was also important to remember that the value must be moved into `a0` before calling `ecall`.