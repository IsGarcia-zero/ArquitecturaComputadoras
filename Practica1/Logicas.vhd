LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
entity Logicas is
	port (
		a, b: in STD_LOGIC_VECTOR(9 DOWNTO 0);
		cntrl: in STD_LOGIC_VECTOR(1 DOWNTO 0);
		salida: out STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
end entity Logicas;

architecture ArqLogicas of Logicas is
	SIGNAL aux : STD_LOGIC_VECTOR(9 DOWNTO 0);
begin
	OperacionesLogicas: process(cntrl, a, b)
	begin
		if cntrl = "00" then --Operacion AND
			aux <= a and b;
		elsif cntrl = "01" then --Operacion OR
			aux <= a or b;
		elsif cntrl = "10" then -- Complemento a 1
			aux <= not a;
		elsif cntrl = "11" then -- Complemento a 2
			aux <= not( '0' & a ) + 1;
		end if;
	end process OperacionesLogicas;
	salida <= aux;
end architecture ArqLogicas;