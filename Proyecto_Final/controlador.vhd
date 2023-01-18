LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY controlador IS
	PORT(
		up, down, izq, der, put, clk : IN STD_LOGIC;
		sal : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
		put_sal : OUT STD_LOGIC
	);
END ENTITY controlador;

ARCHITECTURE bhr OF controlador IS
	SIGNAL upD, downD, izqD, derD, putD : STD_LOGIC;
	SIGNAL player : STD_LOGIC_VECTOR(8 DOWNTO 0) := "000000001";

	COMPONENT debounce_dir IS
		PORT(
			a,b,c,d,e : IN STD_LOGIC;
			clk : IN STD_LOGIC;
			s1,s2,s3,s4,s5 : OUT STD_LOGIC
		);
	END COMPONENT;

BEGIN
	PROCESS(upD, downD, izqD, derD, putD, clk)
	BEGIN
		IF (RISING_EDGE(clk)) THEN
		-- Direcciones
			IF (izqD = '1') THEN
				player <= player(7 DOWNTO 0) & player(8);
			ELSIF (derD = '1') THEN
				player <= player(0) & player(8 DOWNTO 1);
			ELSIF (upD = '1') THEN
				player <= player(5 DOWNTO 0) & player(8 DOWNTO 6);
			ELSIF (downD = '1') THEN
				player <= player(2 DOWNTO 0) & player(8 DOWNTO 3);
			END IF;
		END IF;
	END PROCESS;
	sal <= player;
	put_sal <= putD;
	
	
debouncer1: debounce_dir PORT MAP(up, down, izq, der, put, clk, upD, downD, izqD, derD, putD);
END ARCHITECTURE;