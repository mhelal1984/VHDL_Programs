LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;

---------------------------------
ENTITY parity2 IS --declare an Entity called "parity2" with the following charachtaristics

GENERIC (nbits : positive := 4); -- number of bits in the form of Logic vector (generic means a Constant that will not be changed in testbench)

PORT (d : IN std_logic_vector(nbits-1 DOWNTO 0); -- Take input of a vector with length [ (nbits-1) :0]
odd : OUT std_logic; -- odd Flag
even : OUT std_logic); -- even flag

END parity2;
-----------------------------

-----------------------------
ARCHITECTURE behavioural OF parity2 IS

BEGIN


PROCESS(d) 
		FUNCTION number_of_ones(inp : IN std_logic_vector) RETURN natural IS -- function named "number_of_ones" takes input as a logic vector
		VARIABLE nmb : natural; -- RANGE 0 TO inp'LENGTH;
BEGIN
		nmb := 0; -- counter with range 0 to inp'length
		FOR i IN inp'RANGE LOOP
			IF inp(i)='1' THEN nmb:=nmb+1; END IF; -- count the ones in the bit stream
		END LOOP;
		RETURN nmb;
		END number_of_ones; -- end of "numer_of_ones" declaration : afunction that counts 1's in the input LOGIC_VECTOR
			
		BEGIN
			IF (number_of_ones(d) REM 2)=0 THEN -- if the remainder of the (counter / 2) equals zero > divisible by 2 > EVEN number of ones
				odd <= '0';
				even <= '1';
			ELSE 											-- if the remainder of the (counter / 2) doesn't equals zero > not divisible by 2 > ODD number of ones
				odd <= '1';
				even <= '0';
			END IF;
END PROCESS;
END behavioural;
