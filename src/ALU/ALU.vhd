library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is

Port (
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

