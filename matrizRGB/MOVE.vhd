LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY MOVE IS
	PORT(
		clk : IN STD_LOGIC;
		entrada : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		fila : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		R : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		G : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ENTITY MOVE;

ARCHITECTURE bhr OF MOVE IS 
	SIGNAL camb : STD_LOGIC := '0';
BEGIN
	PROCESS(clk)
	BEGIN
		IF (RISING_EDGE(clk)) THEN
			CASE entrada IS
				WHEN "000000001" => 
					IF (cam = '0') THEN
						fila <= "00000000";
						R <= "11111111";
						G <= "11111111";
						B <= "11111111";
					ELSE
						fila <= "00000000";
						R <= "11111111";
						G <= "11111111";
						B <= "11111111";
					END IF;
				WHEN "000000010" =>
					IF (cam = '0') THEN
						fila <= "00000000";
						R <= "11111111";
						G <= "11111111";
						B <= "11111111";
					ELSE
						fila <= "00000000";
						R <= "11111111";
						G <= "11111111";
						B <= "11111111";
					END IF;
				WHEN "000000100" =>
					IF (cam = '0') THEN
						fila <= "00000000";
						R <= "11111111";
						G <= "11111111";
						B <= "11111111";
					ELSE
						fila <= "00000000";
						R <= "11111111";
						G <= "11111111";
						B <= "11111111";
					END IF;
				WHEN "000001000" =>
					IF (cam = '0') THEN
						fila <= "00000000";
						R <= "11111111";
						G <= "11111111";
						B <= "11111111";
					ELSE
						fila <= "00000000";
						R <= "11111111";
						G <= "11111111";
						B <= "11111111";
					END IF;
				WHEN "000010000" =>
					IF (cam = '0') THEN
						fila <= "00000000";
						R <= "11111111";
						G <= "11100111";
						B <= "11111111";
					ELSE
						fila <= "00000000";
						R <= "11111111";
						G <= "11101111";
						B <= "11111111";
					END IF;
				WHEN "000100000" =>
					IF (cam = '0') THEN
						fila <= "00000000";
						R <= "11111111";
						G <= "11111100";
						B <= "11111111";
					ELSE
						fila <= "00000000";
						R <= "11111111";
						G <= "11111101";
						B <= "11111111";
					END IF;
				WHEN "001000000" =>
					IF (cam = '0') THEN
						fila <= "00000010";
						R <= "11111111";
						G <= "00111111";
						B <= "11111111";
					ELSE
						fila <= "00000011";
						R <= "11111111";
						G <= "10111111";
						B <= "11111111";
					END IF;
				WHEN "010000000" =>
					IF (cam = '0') THEN
						fila <= "00000010";
						R <= "11111111";
						G <= "11100111";
						B <= "11111111";
					ELSE
						fila <= "00000011";
						R <= "11111111";
						G <= "11101111";
						B <= "11111111";
					END IF;
				WHEN "100000000" =>
					IF (cam = '0') THEN
						fila <= "00000010";
						R <= "11111111";
						G <= "11111100";
						B <= "11111111";
					ELSE
						fila <= "00000011";
						R <= "11111111";
						G <= "11111101";
						B <= "11111111";
					END IF;
				WHEN OTHERS 
			END CASE;
		END IF;
	END PROCESS;
END ARCHITECTURE;