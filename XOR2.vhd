----------------------------------------------------------------------------------
--Mohamed Saeed Abd El Salam Helal -- Sec 3 -- Report : Full Adder with selfmande components (2 i/p Xor script)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR2 is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end XOR2;

architecture Dataflow of XOR2 is

begin

y <= I1 xor I2;

end Dataflow;

