LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY Logicas IS
	PORT (
		a, b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		cntrl : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		clk : IN STD_LOGIC;
		salida : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		s_op : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		sf : OUT STD_LOGIC
	);
END ENTITY Logicas;

ARCHITECTURE ArqLogicas OF Logicas IS
	SIGNAL aux : STD_LOGIC_VECTOR(16 DOWNTO 0);
BEGIN
	OperacionesLogicas : PROCESS (cntrl, a, b, clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF cntrl = "00" THEN --Operacion AND
				salida <= a AND b;
				sf <= '0';
				s_op <= "00";
			ELSIF cntrl = "01" THEN --Operacion OR
				salida <= a OR b;
				sf <= '0';
				s_op <= "01";
			ELSIF cntrl = "10" THEN -- Complemento a 1
				salida <= NOT a;
				sf <= '0';
				s_op <= "10";
			ELSIF cntrl = "11" THEN -- Complemento a 2
				aux <= NOT('0' & a) + 1;
				salida <= aux(15 DOWNTO 0);
				sf <= aux(16);
				s_op <= "11";
			END IF;
		END IF;
	END PROCESS OperacionesLogicas;
END ARCHITECTURE ArqLogicas;