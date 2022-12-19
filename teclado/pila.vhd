LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY pila IS
	PORT(
		n : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		clk : IN STD_LOGIC;
		sal : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END ENTITY pila;

ARCHITECTURE bhr OF pila IS
	SIGNAL aux : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL anterior : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL cont : INTEGER RANGE 0 TO 4 := 0;
	SIGNAL deb : INTEGER RANGE 0 TO 10_000 := 0;
	SIGNAL tot : INTEGER RANGE 0 TO 49_999_999 := 0;
	SIGNAL pops, press : STD_LOGIC := '0';
BEGIN
	PROCESS(clk, n, aux)
	BEGIN
		IF (RISING_EDGE(clk)) THEN	
			IF(n /= "00000" AND deb = 0) THEN -- Si se introdujo dato en el teclado...
				anterior <= n;
				IF (n = "10000") THEN -- Si es 16, es pop a la pantalla
					CASE cont IS
						WHEN 1 => aux(3 DOWNTO 0) <= "0000"; cont <= 0;
						WHEN 2 => aux(7 DOWNTO 4) <= "0000"; cont <= 1;
						WHEN 3 => aux(11 DOWNTO 8) <= "0000"; cont <= 2;
						WHEN 4 => aux(15 DOWNTO 12) <= "0000"; cont <= 3;
						WHEN OTHERS => cont <= 0;
					END CASE;
				ELSE
					IF (cont < 3) THEN -- Pone digito en la pantalla
							aux(15 DOWNTO 4) <= aux(11 DOWNTO 0);
							aux(3 DOWNTO 0) <= n(3 DOWNTO 0);
							cont <= cont + 1;
					END IF;
				END IF;
				deb <= deb + 1;
			END IF;
			IF (anterior /= n) THEN
				anterior <= "00000";
			END IF;
			-- Debounce
			IF (deb > 0) THEN
				tot <= tot + 1; -- Contador para los ciclos
			END IF;
			IF (tot = 150) THEN
				tot <= 0;
				IF(deb = 1 AND anterior = "00000") THEN
					deb <= 0;
				ELSE
					deb <= deb + 1;
				END IF;
			END IF;
		END IF;
		sal <= aux;
	END PROCESS;
END ARCHITECTURE;