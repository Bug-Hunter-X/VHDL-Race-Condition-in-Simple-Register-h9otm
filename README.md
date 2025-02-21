# VHDL Race Condition Example
This repository demonstrates a subtle race condition that can occur in VHDL code.  The code implements a simple register, but due to timing issues, the output might not always reflect the current input.

## Bug Description
The issue arises from the simultaneous assignment and read of `internal_data` within a single clock cycle. If the input `data_in` changes rapidly, there's a potential for a race condition where the `data_out` value is not updated correctly. 

## How to Reproduce
Synthesize and simulate the `bug.vhdl` code. By adjusting the testbench, you can see that `data_out` may not accurately reflect `data_in` under certain fast-changing input conditions. 

## Solution
The `bugSolution.vhdl` file provides a solution using a pipelined approach, ensuring that the `data_out` is updated reliably. 