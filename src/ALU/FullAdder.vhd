----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:02:54 11/27/2020 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder is

Port(
	carryIn : IN STD_LOGIC;
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	
	result : OUT STD_LOGIC;
	carryOut : OUT STD_LOGIC
);

end FullAdder;

architecture Behavioral of FullAdder is

signal result_0, carry_0, carry_1 : STD_LOGIC;

begin

result_0 <= a xor b;
carry_0 <= a and b;

carry_1 <= result_0 and carryIn;
result <= result_0 xor carryIn;

carryOut <= carry_0 or carry_1;

end Behavioral;

