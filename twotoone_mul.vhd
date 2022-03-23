library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity twotoone_mul is
    Port ( w0 : in  STD_LOGIC;
           w1 : in  STD_LOGIC;
           w2 : in  STD_LOGIC;
           w3 : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           f : out  STD_LOGIC);
end twotoone_mul;

architecture Behavioral of twotoone_mul is

begin

with s select
f <= w0 when "00",
     w1 when "01",
	  w2 when "10",
	  w3 when others;

end Behavioral;

