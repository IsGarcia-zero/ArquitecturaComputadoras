LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY full_adder IS 
	PORT( 
		A, B, Cin: in std_logic;
		S, Cout: out std_logic
   );
END ENTITY;

ARCHITECTURE bhr OF full_adder IS 
BEGIN 
	PROCESS(A,B,Cin)
	BEGIN
		S<= A xor B xor Cin; 
		Cout <= ((A and B) or (A and Cin) or (A and Cin)); 
	END PROCESS;
END ARCHITECTURE;