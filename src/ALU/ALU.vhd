----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:59:57 11/26/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is

Port (
	clear : IN STD_LOGIC;
	a : IN STD_LOGIC_VECTOR(7 downto 0);
	b : IN STD_LOGIC_VECTOR(7 downto 0);
	opCode : IN STD_LOGIC_VECTOR(3 downto 0);
	
	result : OUT STD_LOGIC_VECTOR(7 downto 0);
	zeroFlag : OUT STD_LOGIC;
	negativeFlag : OUT STD_LOGIC;
	overFlowFlag : OUT STD_LOGIC
);

end ALU;

architecture Behavioral of ALU is

begin


end Behavioral;

