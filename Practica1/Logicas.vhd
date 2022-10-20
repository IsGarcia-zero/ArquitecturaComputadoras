LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY logicas IS PORT (

<<<<<<< HEAD
	a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	clk : INOUT STD_LOGIC;
	Ya : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);

);

END logicas;
ARCHITECTURE Logicas OF logicas IS
BEGIN

	logica : PROCESS (clk, sel, sel_esp, Aa, Ba, bandera, var)

	BEGIN

		IF rising_edge(clk) THEN
			CASE sel IS
				WHEN "00" => --logicas
					IF (sel_esp = "00") THEN --negacion 
						Ya <= NOT('0' & Aa);
					ELSIF (sel_esp = "01") THEN --complemento a 2	
						IF ((NOT Aa) = "1111111111") THEN
							Ya <= (NOT('1' & Aa)) + 1;
						ELSE
							Ya <= (NOT('0' & Aa)) + 1;
						END IF;
					ELSIF (sel_esp = "10") THEN --and
						Ya <= '0' & (Aa AND Ba);
					ELSE
						Ya <= '0' & (Aa OR Ba); --or
					END IF;

				WHEN "01" => --shifters
					IF (cont = 0) THEN
						bandera <= '1'; --
					ELSE
						Ya <= '0' & var;
						IF (cont > 9) THEN
							bandera <= '0'; -- 0
						END IF;
					END IF;
			END PROCESS logica;

		END ARCHITECTURE logicas;
=======


>>>>>>> c4c11b1722190194ca5c9bcadba29412abc93556
