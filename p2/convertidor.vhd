LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY convertidor IS
	PORT(
		en : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		clk : in STD_lOGIC;
		s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF convertidor IS
	SIGNAL FINAL : STD_LOGIC_VECTOR(15 DOWNTO 0);
	--VARIABLE contador, aux : INTEGER RANGE 0 TO 9:= 0;
BEGIN
	PROCESS(en,clk)
	
	VARIABLE digitos : STD_LOGIC_VECTOR(15 DOWNTO 0):="0000000000000000";
	BEGIN
	--IF (RISING_EDGE(clk)) THEN
		FOR j IN 0 TO 15 LOOP
			digitos(j) := '0';
		END LOOP;
		digitos(2 DOWNTO 0) := en(9 DOWNTO 7);
		FOR i IN 6 DOWNTO 0 LOOP
			IF (digitos(15 DOWNTO 12) >= "0101") THEN
				digitos(15 DOWNTO 12) := digitos(15 DOWNTO 12) + 3;
			END IF;
			IF (digitos(11 DOWNTO 8) >= "0101") THEN
				digitos(11 DOWNTO 8) := digitos(11 DOWNTO 8) + 3;
			END IF;
			IF (digitos(7 DOWNTO 4) >= "0101") THEN
				digitos(7 DOWNTO 4) := digitos(7 DOWNTO 4) + 3;
			END IF;
			IF (digitos(3 DOWNTO 0) >= "0101") THEN
				digitos(3 DOWNTO 0) := digitos(3 DOWNTO 0) + 3;
			END IF;
			digitos := digitos(14 downto 0) & en(6 - i);
		END LOOP;
		--digitos := "0001001000110100";
		FINAL <= digitos;
		-- END IF;
	END PROCESS;
	s <= FINAL;
END ARCHITECTURE;