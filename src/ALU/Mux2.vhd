library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2 is
Port(
	I0, I1, sel : in STD_LOGIC;
	o : out STD_LOGIC
);
end Mux2;

architecture Behavioral of Mux2 is

signal I0_s, I1_s : STD_LOGIC;

begin

I0_s <= I0 and (not sel);
I1_s <= I1 and sel;
o <= I0_s or I1_s;

end Behavioral;

