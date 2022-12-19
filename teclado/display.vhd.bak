LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY display IS 
	PORT(
		en : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		clk: IN STD_LOGIC;
		d1, d2, d3, d4 : OUT STD_LOGIC;
		a, b, c, d, e, f, g : OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE bhr OF display IS
	SIGNAL contador : INTEGER RANGE 0 TO 3 := 0;
	SIGNAL seg : INTEGER RANGE 0 TO 5 := 0;
	SIGNAL ctG : INTEGER RANGE 0 TO 49999999 := 0;
	SIGNAL arreglo : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL aux : STD_LOGIC_VECTOR(6 DOWNTO 0):="0000000";
	SIGNAL tmp : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL msj : STD_LOGIC := '0';
	SIGNAL address : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL palabra : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL op : STD_LOGIC_VECTOR(11 DOWNTO 0) := "000000000001";
	COMPONENT texto IS
		PORT(
			addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			word : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;
BEGIN
	
	NUMEROS: PROCESS(tmp, clk) --GFEDCBA
	BEGIN
		IF (RISING_EDGE(clk)) THEN
		--digito <= "0010010101000001";
				CASE contador IS
					WHEN 0 => 
						arreglo <= "0001";
						tmp <= en(15 DOWNTO 12);
					WHEN 1 =>
						arreglo <= "0010";
						tmp <= en(11 DOWNTO 8);
					WHEN 2 => 
						arreglo <= "0100";
						tmp <= en(7 DOWNTO 4);
					WHEN 3 => 
						arreglo <= "1000";
						tmp <= en(3 DOWNTO 0);
				END CASE;
				contador <= contador + 1;
				IF (contador = 4) THEN
					contador <= 0;
				END IF;
		END IF;
			CASE tmp IS
				WHEN "0000" => aux <= "1000000";
				WHEN "0001" => aux <= "1111001";
				WHEN "0010" => aux <= "0100100";
				WHEN "0011" => aux <= "0110000";
				WHEN "0100" => aux <= "0011001";
				WHEN "0101" => aux <= "0010010";
				WHEN "0110" => aux <= "0000010";
				WHEN "0111" => aux <= "1111000";
				WHEN "1000" => aux <= "0000000";
				WHEN "1001" => aux <= "0010000";
				WHEN "1111" => aux <= "1111111";
				WHEN OTHERS => aux <= "0111111";
			END CASE;
					
	END PROCESS NUMEROS;
	-- Asignacion
	a <= aux(0);
	b <= aux(1);
	c <= aux(2);
	d <= aux(3);
	e <= aux(4);
	f <= aux(5);
	g <= aux(6);
	
	d1 <= arreglo(0);
	d2 <= arreglo(1);
	d3 <= arreglo(2);
	d4 <= arreglo(3);
	
END ARCHITECTURE;