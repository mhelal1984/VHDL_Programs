
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity twobit_fulladder is

	Port (	A, B		: in STD_LOGIC;
				C			: in STD_LOGIC;	
				xor_1		: inout STD_LOGIC;
				S, C_out	: out STD_LOGIC);

end twobit_fulladder;


architecture Dataflow of twobit_fulladder is

begin

				xor_1 <= (A xor B);
				S		<= (A xor B) xor C;
				C_out <= (A And B) or (xor_1 and C);
	
end Dataflow;

