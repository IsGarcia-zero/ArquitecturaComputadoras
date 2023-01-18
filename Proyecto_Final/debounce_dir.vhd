LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY debounce_dir IS
	PORT(
		a,b,c,d,e : IN STD_LOGIC;
		clk : IN STD_LOGIC;
		s1,s2,s3,s4,s5 : OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE bhr OF debounce_dir IS
	SIGNAL cont : INTEGER RANGE 0 TO 5000:= 0;
	SIGNAL enable : STD_LOGIC := '0';
BEGIN
	PROCESS(a,b,c,d,e,clk)
	BEGIN
		IF (RISING_EDGE(clk)) THEN
			cont <= cont + 1;
			IF ((a = '1' OR b = '1' OR c = '1' OR d = '1' OR e = '1') AND enable = '0') THEN
				enable <= '1';
				s1 <= a;
				s2 <= b;
				s3 <= c;
				s4 <= d;
				s5 <= e;
			ELSE
				s1 <= '0';
				s2 <= '0';
				s3 <= '0';
				s4 <= '0';
				s5 <= '0';
			END IF;
			IF(cont = 3000) THEN
				cont <= 0;
				enable <= '0';
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE;