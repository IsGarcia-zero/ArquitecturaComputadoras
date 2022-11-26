LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ALU IS 
	PORT(
		A,B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		R : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		clk, rst : IN STD_LOGIC; -- No puse in XDDDD
		z_flag, s_flag, ov_flag, c_flag : OUT STD_LOGIC
	);
END ENTITY ALU;

ARCHITECTURE bhr OF ALU IS

	SIGNAL sel_aux : STD_LOGIC_VECTOR(1 DOWNTO 0):= "00";
	SIGNAL sel_aux_2 : STD_LOGIC := '0';
	SIGNAL ua_sal,log_sal,bar_sal : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL rlj_aux : STD_LOGIC;
	SIGNAL b_aux, c_aux, d_aux : STD_LOGIC;
	SIGNAL a_aux : STD_LOGIC_VECTOR(1 DOWNTO 0);
-- Llamamos a todos los componentes
COMPONENT uapro IS
    PORT (
        Xi, Yi : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
        selector : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        clk, rst : IN STD_LOGIC;
        aS, bS : IN STD_LOGIC;
        Si : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        C, Z, Ov, S : OUT STD_LOGIC
    );
END COMPONENT uapro;

COMPONENT Logicas IS
	PORT (
		a, b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		cntrl : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		clk : IN STD_LOGIC;
		salida : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		s_op : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		sf : OUT STD_LOGIC
	);
END COMPONENT Logicas;

COMPONENT barrelShifters IS
    PORT (
        a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        cntrl, clk, iniciar : IN STD_LOGIC;
        salShifters : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        salPrub : OUT STD_LOGIC
    );
END COMPONENT barrelShifters;

BEGIN
	
	PROCESS(sel, log_sal, ua_sal, bar_sal, sel_aux_2,clk)
	BEGIN
		CASE sel IS
			WHEN "0000" => 
				R <= "0000000000000000";
				sel_aux <= "00";
			WHEN "0001" => -- NOT
				sel_aux <= "10";
				R <= log_sal;
			WHEN "0010" => -- COMPL A2
				sel_aux <= "11";
				R <= log_sal;
			WHEN "0011" => -- AND
				sel_aux <= "00";
				R <= log_sal;
			WHEN "0100" => -- OR
				sel_aux <= "01";
				R <= log_sal;
			WHEN "0101" => -- LSL
				sel_aux <= "00";
				R <= bar_sal;
			WHEN "0110" => -- ASR
				sel_aux <= "01";
				R <= bar_sal;
			WHEN "0111" => -- SUMA
				sel_aux <= "00";
				R <= ua_sal;
			WHEN "1000" => -- RESTA
				sel_aux <= "01";
				R <= ua_sal;
			WHEN "1001" => -- MULT
				sel_aux <= "10";
				R <= ua_sal;
			WHEN "1010" => -- DIVISION
				sel_aux <= "11";
				R <= ua_sal;
			WHEN OTHERS => 
				R <= "1111111111111111";
				sel_aux <= "00";
		END CASE;
	END PROCESS;
	

unidad_aritmetica: uapro PORT MAP(A(14 DOWNTO 0),B(14 DOWNTO 0),sel_aux, clk,rst,A(15),B(15),ua_sal,c_flag,z_flag,ov_flag,s_flag);
unidad_logica: Logicas PORT MAP(A,B, sel_aux, clk, log_sal,a_aux,b_aux);
barrel_shifters: barrelShifters PORT MAP(A,sel_aux_2,clk, '1', bar_sal, d_aux);


END ARCHITECTURE;