----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:00:59 03/14/2022 
-- Design Name: 
-- Module Name:    and_or_not_module - Behavioral 
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

entity and_or_not_module is
	
	port	(	 A, B : in STD_LOGIC;
				 c    : in STD_LOGIC;
				 D, E : in STD_LOGIC;
				 F		: out STD_LOGIC);
				 
end and_or_not_module;


architecture Behavioral of and_or_not_module is

	begin
			
			F <= (A and B) or c or (not(D and E));

	end Behavioral;

