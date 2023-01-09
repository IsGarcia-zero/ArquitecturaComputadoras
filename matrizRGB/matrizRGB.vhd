LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY matrizRGB IS
	PORT(
		up, down, izq, der, put, clk : IN STD_LOGIC;
		filas : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		R: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		G: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF matrizRGB IS 
	SIGNAL R_aux,G_aux,B_aux, aux_RGB : STD_LOGIC_VECTOR(7 DOWNTO 0):= "11111110";
	SIGNAL f_aux : STD_LOGIC_VECTOR(7 DOWNTO 0):= "00000001";
	SIGNAL cam, camb_player : STD_LOGIC := '0';
	SIGNAL cont : INTEGER RANGE 0 TO 8 := 0;
	SIGNAL player1 : STD_LOGIC_VECTOR(8 DOWNTO 0) := "100000000";
	SIGNAL player2 : STD_LOGIC_VECTOR(8 DOWNTO 0):= "000000001";
	SIGNAL f1,f2,f3, col1,col2,col3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL upD, downD, izqD, derD, putD : STD_LOGIC;
	
	COMPONENT debounce_dir IS
		PORT(
			a,b,c,d,e : IN STD_LOGIC;
			clk : IN STD_LOGIC;
			s1,s2,s3,s4,s5 : OUT STD_LOGIC
		);
	END COMPONENT debounce_dir;
	
	
BEGIN
	PROCESS(clk, R_aux,G_aux,B_aux, f_aux, aux_RGB)
	BEGIN
		
		IF (RISING_EDGE(clk)) THEN
		-- Direcciones
			IF (izqD = '1') THEN
				player1 <= player1(7 DOWNTO 0) & player1(8);
			ELSIF (derD = '1') THEN
				player1 <= player1(0) & player1(8 DOWNTO 1);
			END IF;
			
		-- Visualizaciones
			IF( player1(8) = '1') THEN
				IF (camb_player = '1') THEN
					f_aux <= "00000010";
					R_aux <= "11111111";
					G_aux <= "11111100";
					B_aux <= "11111111";
					camb_player <= '0';
				ELSE
					f_aux <= "00000011";
					R_aux <= "11111111";
					G_aux <= "11111101";
					B_aux <= "11111111";
					camb_player <= '1';
				END IF;
			END IF;
		END IF;
		-- Sacamos el valor
		filas <= f_aux;
		R <= R_aux;
		G <= G_aux;
		B <= B_aux;
	END PROCESS;
deb1 : debounce_dir PORT MAP(up, down, izq, der, put, clk, upD, downD, izqD, derD, putD);
END ARCHITECTURE;