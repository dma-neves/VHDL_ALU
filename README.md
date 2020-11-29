# VHDL_ALU

**Description:**
  - Simple ALU for a hypothetical CPU made in VHDL implicitly using logic gates and a structural (instead of high level behavioral) description. Devoleped using the Xilinx ISE tool.
  - The ALU has 2 8bit input numbers A and B and a 3bit OpCode opc.
  - As outputs the system has a 8bit number result and 3 flags (overflow, negative and zero)
  - A alu_test.vhd test file is included in the rep. 

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
