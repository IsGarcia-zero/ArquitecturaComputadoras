LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY stack IS
	PORT(
		input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		clk : IN STD_LOGIC;
		push, pop : IN STD_LOGIC;
		sal : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF stack IS
	SIGNAL i : INTEGER RANGE 0 TO 99 := 0;
	SIGNAL tot : INTEGER RANGE 0 TO 150 := 0;
	SIGNAL deb : INTEGER RANGE 0 TO 5 := 0;
	SIGNAL iB : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	TYPE data IS ARRAY(99 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ram : data;
BEGIN
	PROCESS(clk)
	BEGIN
		IF (RISING_EDGE(clk)) THEN
			tot <= tot + 1;
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
			IF (tot = 150) THEN
				tot <= 0;
				IF(deb = 2) THEN
					deb <= 0;
				ELSE
					deb <= deb + 1;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	sal <= iB;
END ARCHITECTURE;