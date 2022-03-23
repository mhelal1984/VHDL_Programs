----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:35:56 03/19/2022 
-- Design Name: 
-- Module Name:    MUX - Behavioral, DataFlow 
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

entity MUX is
		
		Port(	I0,I1, I2, I3: in std_logic;
				S:	in std_logic_vector (1 downto 0);
				F:	out std_logic);
				
end MUX;

architecture behavioral1 of MUX is

begin
		with s	select
		F	<=	I0 when "00",
				I1 when "01",
				I2 when "10",
				I3 when others;
				

end behavioral1;

