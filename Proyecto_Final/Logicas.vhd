LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY Logicas IS
	PORT (
		a, b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		cntrl : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		clk : IN STD_LOGIC;
		salida : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END ENTITY Logicas;

ARCHITECTURE ArqLogicas OF Logicas IS
	SIGNAL aux : STD_LOGIC_VECTOR(16 DOWNTO 0);
BEGIN
	aux <= NOT('0' & a) + 1;
	WITH cntrl SELECT salida <=
			a AND b WHEN "00",
			a OR b WHEN "01",
			NOT a WHEN "10",
			aux(15 DOWNTO 0) WHEN "11";
--
--	OperacionesLogicas : PROCESS (cntrl, a, b, clk,salida_aux)
--	BEGIN
--		
--		
		

--	IF rising_edge(clk) THEN
--			IF cntrl = "00" THEN --Operacion AND
--				salida_aux <= a AND b;
--			ELSIF cntrl = "01" THEN --Operacion OR
--				salida_aux <= a OR b;
--			ELSIF cntrl = "10" THEN -- Complemento a 1
--				salida_aux <= NOT a;
--			ELSIF cntrl = "11" THEN -- Complemento a 2
--				aux <= NOT('0' & a) + 1;
--				salida_aux <= aux(15 DOWNTO 0);
--			END IF;
--		END IF;
--	END PROCESS OperacionesLogicas;
--	salida <= salida_aux;
END ARCHITECTURE ArqLogicas;