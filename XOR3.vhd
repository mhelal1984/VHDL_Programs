----------------------------------------------------------------------------------
--Mohamed Saeed Abd El Salam Helal -- Sec 3 -- Report : Full Adder with selfmande components (3 i/p Xor script)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR3 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           RES : out  STD_LOGIC);
end XOR3;

architecture Structural of XOR3 is
signal U1_OUT: STD_LOGIC;

component XOR2 
			port (
					I1: in STD_LOGIC;
					I2: in STD_LOGIC;
					Y : out STD_LOGIC
					);
end component;

begin	
	U1: XOR2 Port map (	I1 => A,
								I2 => B,
								Y	=> U1_OUT);
	U2: XOR2 Port map (	I1 => U1_OUT,
								I2 => C,
								Y	=> RES);
end Structural;

