# Notes

## What the program does
The program goes through an array of 5 integers and counts how many of them are even.  
The array is `{10, 20, 22, 40, 27}`, so there are **4 even numbers**. The program prints `4`.

The RISC-V program uses the index `i` to access each array element, checks whether the value is divisible by 2, and increases `count` when the remainder is 0.

## Registers
- `x5` — base address of the `numbers` array
- `x6` — holds `5`, the array size
- `x7` — holds `i`, the array index
- `x28` — holds `count`
- `x29` — holds `2`, the divisor used to check for even numbers
- `x30` — temporary register used for the array address and value
- `a0` — holds the final count to print
- `a7` — holds the system call number

## Anything harder than expected
Accessing `numbers[i]` was the hardest part because RISC-V uses byte addresses. The index must be multiplied by 4 using `slli` because each integer occupies 4 bytes. The `rem` instruction is then used to check whether the number is divisible by 2.