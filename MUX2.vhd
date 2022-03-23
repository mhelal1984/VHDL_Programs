
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX2 is
		port(	I: in std_logic_vector (3 downto 0);
						S: in std_logic_vector (1 downto 0);
						F: out std_logic);
						
end MUX2;
		
architecture Behavioral2 of MUX2 is

begin
		process (S,I)
		
		begin
		
		
			if (S <= "00") then
				F <= I(0);
			elsif (S <= "01") then
				F <= I(1);
			elsif (S <= "10") then
				F <= I(2);
			else
				F <= I(3);
			
			end if;
		end process;


end Behavioral2;

