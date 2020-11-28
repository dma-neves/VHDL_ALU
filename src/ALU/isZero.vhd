library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity isZero is
Port(
	a : in STD_LOGIC_VECTOR(7 downto 0);
	isZero : out STD_LOGIC
);
end isZero;

architecture Behavioral of isZero is

begin

isZero <= 
a(0) = '0' and
a(1) = '0' and
a(2) = '0' and
a(3) = '0' and
a(4) = '0' and
a(5) = '0' and
a(6) = '0' and
a(7) = '0';

end Behavioral;

