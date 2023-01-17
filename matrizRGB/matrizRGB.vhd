LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY matrizRGB IS
	PORT(
		put, clk : IN STD_LOGIC;
		movimiento : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		pos_player1: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		pos_player2: IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		filas : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		R: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		G: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF matrizRGB IS 
	-- SIGNALS para el componente de cursor
	SIGNAL R_aux,G_aux,B_aux, aux_RGB, f_aux : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	-- Signal para la salida final
	SIGNAL R_aux_final, G_aux_final, B_aux_final, f_aux_final : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	-- SIGNALs para el tablero
	SIGNAL  aux_RGB_tab, R_aux_tab,G_aux_tab,B_aux_tab : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	-- SRD_LOGIC switchers para dibujo
	SIGNAL aux_tab: STD_LOGIC;
	SIGNAL switcher : STD_LOGIC_VECTOR(4 DOWNTO 0);
	
	-- Auxiliares para los componentes de posiciones
	SIGNAL R_aux1,G_aux1,B_aux1, f_aux1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL R_aux2,G_aux2,B_aux2, f_aux2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	SIGNAL turno : STD_LOGIC := '0'; -- Turno del player
	
	-- Aqui guardaremos las posiciones de los jugadores
	SIGNAL posComp1, posComp2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
	
	-- COMPONENTES
	COMPONENT debounce_dir IS
		PORT(
			a,b,c,d,e : IN STD_LOGIC;
			clk : IN STD_LOGIC;
			s1,s2,s3,s4,s5 : OUT STD_LOGIC
		);
	END COMPONENT debounce_dir;
	
	COMPONENT MOVE IS
	PORT(
		clk, player : IN STD_LOGIC;
		entrada : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		fila : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		R : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		G : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	END COMPONENT MOVE;
	
	COMPONENT tablero IS
		PORT(
			clk : IN STD_LOGIC;
			f: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			R: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			G: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			B: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;
	
	
BEGIN
	PROCESS(clk, R_aux,G_aux,B_aux, f_aux, aux_RGB, R_aux_final, G_aux_final, B_aux_final, f_aux_final)
	BEGIN
		
		IF (RISING_EDGE(clk)) THEN
			-- Turno
			IF (put = '1') THEN
				IF (turno = '0') THEN
					turno <= '1';
				ELSE
					turno <= '0';
				END IF;
			END IF;
			CASE switcher IS
				WHEN "00000" =>
					f_aux_final <= aux_RGB_tab;
					R_aux_final <= R_aux_tab;
					G_aux_final <= G_aux_tab;
					B_aux_final <= B_aux_tab;
				WHEN "00001" =>
					f_aux_final <= aux_RGB_tab;
					R_aux_final <= R_aux_tab;
					G_aux_final <= G_aux_tab;
					B_aux_final <= B_aux_tab;
				WHEN "00010" =>
					IF (pos_player1(0) = '1') THEN -- casilla 9
						posComp1 <= "000000001";
						f_aux_final <= f_aux1;
						R_aux_final <= R_aux1;
						G_aux_final <= G_aux1;
						B_aux_final <= B_aux1;
					ELSIF(pos_player2(0) = '1') THEN
						posComp2 <= "000000001";
						f_aux_final <= f_aux2;
						R_aux_final <= R_aux2;
						G_aux_final <= G_aux2;
						B_aux_final <= B_aux2;
					END IF;
				WHEN "00011" =>
					IF (pos_player1(0) = '1') THEN
						posComp1 <= "000000001";
						f_aux_final <= f_aux1;
						R_aux_final <= R_aux1;
						G_aux_final <= G_aux1;
						B_aux_final <= B_aux1;
					ELSIF(pos_player2(0) = '1') THEN
						posComp2 <= "000000001";
						f_aux_final <= f_aux2;
						R_aux_final <= R_aux2;
						G_aux_final <= G_aux2;
						B_aux_final <= B_aux2;
					END IF;
				WHEN "00100" =>
					IF (pos_player1(1) = '1') THEN -- casilla 8
						posComp1 <= "000000010";
						f_aux_final <= f_aux1;
						R_aux_final <= R_aux1;
						G_aux_final <= G_aux1;
						B_aux_final <= B_aux1;
					ELSIF(pos_player2(1) = '1') THEN
						posComp2 <= "000000010";
						f_aux_final <= f_aux2;
						R_aux_final <= R_aux2;
						G_aux_final <= G_aux2;
						B_aux_final <= B_aux2;
					END IF;
				WHEN "00101" =>
					IF (pos_player1(1) = '1') THEN
						posComp1 <= "000000010";
						f_aux_final <= f_aux1;
						R_aux_final <= R_aux1;
						G_aux_final <= G_aux1;
						B_aux_final <= B_aux1;
					ELSIF(pos_player2(1) = '1') THEN
						posComp1 <= "000000010";
						f_aux_final <= f_aux2;
						R_aux_final <= R_aux2;
						G_aux_final <= G_aux2;
						B_aux_final <= B_aux2;
					END IF;
					
				WHEN "00110" =>
				WHEN "00111" =>
				WHEN "01000" =>
				WHEN "01001" =>
				WHEN "01010" =>
				WHEN "01011" =>
				WHEN "01100" =>
				WHEN "01101" =>
				WHEN "01110" =>
				WHEN "01111" =>
				WHEN OTHERS =>
					f_aux_final <= f_aux;
					R_aux_final <= R_aux;
					G_aux_final <= G_aux;
					B_aux_final <= B_aux;
			END CASE;
			switcher <= switcher + 1;
			IF switcher = "11111" THEN
				switcher <= "00000";
			END IF;
		END IF;
		-- Sacamos el valor
		filas <= f_aux_final;
		R <= R_aux_final;
		G <= G_aux_final;
		B <= B_aux_final;
	END PROCESS;

sal: MOVE PORT MAP(clk, turno, movimiento, f_aux, R_aux, G_aux, B_aux);
-- Llamamos 2 veces para almacenar las posiciones de ambos jugadores
pos1: MOVE PORT MAP(clk, '0', posComp1, f_aux1, R_aux1, G_aux1, B_aux1);
pos2: MOVE PORT MAP(clk, '1', posComp2, f_aux2, R_aux2, G_aux2, B_aux2);

tablero1 : tablero PORT MAP(clk, aux_RGB_tab, R_aux_tab,G_aux_tab,B_aux_tab);
END ARCHITECTURE;