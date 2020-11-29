LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         opc : IN  std_logic_vector(2 downto 0);
         result : OUT  std_logic_vector(7 downto 0);
         zeroF : OUT  std_logic;
         negativeF : OUT  std_logic;
         overflowF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal opc : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(7 downto 0);
   signal zeroF : std_logic;
   signal negativeF : std_logic;
   signal overflowF : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          a => a,
          b => b,
          opc => opc,
          result => result,
          zeroF => zeroF,
          negativeF => negativeF,
          overflowF => overflowF
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here
		
		-- 7 + 15 = 22 (22 = 00010110)
		a <= "00000111";
		b <= "00001111";
		opc <= "000";
		wait for 100 ns;
		
		-- 26 - 53 = -27 (-17 = 11100101)
		a <= "00011010";
		b <= "00110101";
		opc <= "001";
		wait for 100 ns;
		
		-- 26+1 = 27 (27 = 00011011)
		opc <= "010";
		wait for 100 ns;
		
		-- 26-1 = 25 (25 = 00011001)
		opc <= "011";
		wait for 100 ns;
		
		-- -(26) = -26 (-26 = 11100110)
		opc <= "100";
		wait for 100 ns;
		
		-- ~01011110 = 10100001
		a <= "01011110";
		opc <= "101";
		
		-- 01100111 and 10001101 = 00000101
		a <= "01100111";
		b <= "10001101";
		opc <= "110";
		wait for 100 ns;
		
		-- 01100111 or 10001101 = 11101111
		a <= "01100111";
		b <= "10001101";
		opc <= "111";
		wait for 100 ns;

      wait;
   end process;

END;
