# VHDL_ALU

**Description:**
  - Simple ALU for a hypothetical CPU made in VHDL, devoleped using the Xilinx ISE tool.
  - The ALU will have 2 8bit input numbers A and B and a 3bit OpCode opc.
  - As outputs the system will have a 8bit number result and 3 flags (overflow, negative and zero)

**Operations:**  
  - opc 000: add (A + B)
  - opc 001: sub (A - B)
  - opc 010: inc (A+1)
  - opc 011: dec (A-1)
  - opc 100: neg (-A)
  - opc 101: not (~A)
  - opc 110: and (A ^ B)
  - opc 111: or  (A v B)

**Schematic/Diagram:**
  ![alt text](https://github.com/dma-neves/VHDL_ALU/blob/main/alu_diag.png)
