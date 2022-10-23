LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY Logicas IS
	PORT (
		a, b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		cntrl : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		clk : IN STD_LOGIC;
		salida : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END ENTITY Logicas;

ARCHITECTURE ArqLogicas OF Logicas IS
	SIGNAL aux : STD_LOGIC_VECTOR(9 DOWNTO 0);
BEGIN
	OperacionesLogicas : PROCESS (cntrl, a, b, clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF cntrl = "00" THEN --Operacion AND
				aux <= a AND b;
			ELSIF cntrl = "01" THEN --Operacion OR
				aux <= a OR b;
			ELSIF cntrl = "10" THEN -- Complemento a 1
				aux <= NOT a;
			ELSIF cntrl = "11" THEN -- Complemento a 2
				aux <= NOT('0' & a) + 1;
			END IF;
		END IF;
	END PROCESS OperacionesLogicas;
	salida <= aux;
END ARCHITECTURE ArqLogicas;