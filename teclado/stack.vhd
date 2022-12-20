LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY stack IS
	PORT(
		input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		clk : IN STD_LOGIC;
		push, pop, enable : IN STD_LOGIC;
		ins : OUT STD_LOGIC;
		sal_ins : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		sal : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF stack IS
	SIGNAL i,j : INTEGER RANGE 0 TO 99 := 0;
	SIGNAL tot : INTEGER RANGE 0 TO 1500 := 0;
	SIGNAL deb : INTEGER RANGE 0 TO 5 := 0;
	SIGNAL iB : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	SIGNAL ver : STD_LOGIC := '0';
	TYPE data IS ARRAY(99 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ram : data;
BEGIN
	PROCESS(clk)
	BEGIN
		IF (RISING_EDGE(clk)) THEN
			IF (enable = '0') THEN
				ver <= '1';
			END IF;
			IF (ver = '0') THEN
				IF (deb = 0) THEN
					IF(push = '0') THEN
						ram(i) <= input;
						i <= i + 1;
						iB <= iB + 1;
						deb <= deb + 1;
					END IF;
					IF(pop = '0' AND i > 0) THEN
						ram(i) <= "0000000000000000";
						i <= i - 1;
						iB <= iB - 1;
						deb <= deb + 1;
					END IF;
				END IF;
				-- Debounce
				IF (deb > 0) THEN
					tot <= tot + 1;
				END IF;
				IF (tot = 150) THEN
					tot <= 0;
					IF(deb = 2) THEN
						deb <= 0;
					ELSE
						deb <= deb + 1;
					END IF;
				END IF;
			ELSE
				tot <= tot + 1;					
				IF (tot = 500) THEN
					tot <= 0;
					IF (j < i) THEN
						sal_ins <= ram(j);
						j <= j + 1;
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	sal <= iB;
	ins <= ver;
END ARCHITECTURE;