# VHDL_ALU

**Description:**
  - Simple ALU for a hypothetical CPU made in VHDL, devoleped using the Xilinx ISE tool.
  - The ALU will have 2 8bit input numbers A and B and a 3bit OpCode opc.
  - As outputs the system will have a 8bit number result and 3 flags (overflow, negative and zero)

**Operations:**
  - add (A + B) opc: 000
  - sub (A - B) opc: 001
  - inc (A + 1) opc: 010
  - dec (A - 1) opc: 011
  - neg (-A)    opc: 100
  - not (~A)    opc: 101
  - and (A ^ B) opc: 110
  - or (A v B)  opc: 111

**Schematic/Diagram:**
  ![alt text](https://github.com/dma-neves/VHDL_ALU/blob/main/alu_diag.png)
