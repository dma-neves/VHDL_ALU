# VHDL_ALU

**Description:**
  - Simple ALU for a hypothetical CPU made in VHDL, devoleped using Xilinx ISE tool.
  - The ALU will have 2 8 bit input numbers A and B and a 3 bit OpCode opc.
  - The system will therefore have 8 possible operations:
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
