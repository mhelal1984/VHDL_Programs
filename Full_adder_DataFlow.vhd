----------------------------------------------------------------------------------
--Mohamed Saeed Abd El Salam Helal -- Sec 3 -- Report : Full Adder with selfmande components (main Full Adder script)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_adder_DataFlow is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           CARRY : out  STD_LOGIC);
end Full_adder_DataFlow;

architecture Behavioral of Full_adder_DataFlow is

SIGNAL X, Y, Z : STD_LOGIC; -- AND'S OUTPUTS "INTERNAL WIRES"

component XOR3 
			port (
					A: in STD_LOGIC;
					B: in STD_LOGIC;
					C: in STD_LOGIC;
					RES: out STD_LOGIC
					);
end component;
begin

U3: XOR3 Port map (	A => A,
							B => B,
							C => c,
							RES => sum);
 
X <= A AND B;
Y <= B AND C;
Z <= A AND C;
CARRY <= X OR Y OR Z;

end Behavioral;

