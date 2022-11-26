LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY FinalSelection IS
	PORT(
		ecuacion : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		resultado : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		clk,rst :IN STD_LOGIC
	);
END ENTITY FinalSelection;

ARCHITECTURE bhr OF FinalSelection is
	TYPE estado IS (state0,state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11);
	SIGNAL pr_state, n_state: estado;
	SIGNAL res,res1, res2, res3 : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL s_aux : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL aux_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL sexo : STD_LOGIC_vector(1 DOWNTO 0):="00";

COMPONENT ecuaciones IS 
	PORT( 
		addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
		ec : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		resultado : OUT STD_LOGIC_VECTOR(9 DOWNTO 0); 
		clk,rst : STD_LOGIC
	); 
END COMPONENT ecuaciones; 

COMPONENT convertidor IS
	PORT(
		en : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		clk : in STD_lOGIC;
		s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

BEGIN
	PROCESS(clk)
	BEGIN
	IF (RISING_EDGE(clk)) THEN
			CASE pr_state IS
				WHEN state0 =>
					aux_out <= "0000";
					pr_state <= state1;
				WHEN state1 =>
					aux_out <= "0001";
					pr_state <= state2;
				WHEN state2 =>
					aux_out <= "0010";
					pr_state <= state3;
				WHEN state3 =>
					aux_out <= "0011";
					pr_state <= state4;
				WHEN state4 =>
					aux_out <= "0100";
					pr_state <= state5;
				WHEN state5 =>
					aux_out <= "0101";
					pr_state <= state6;
				WHEN state6 =>
					aux_out <= "0110";
					pr_state <= state7;
				WHEN state7 =>
					aux_out <= "0111";
					pr_state <= state8;
				WHEN state8 =>
					aux_out <= "1000";
					pr_state <= state9;
				WHEN state9 =>
					aux_out <= "1001";
					pr_state <= state10;
				WHEN OTHERS =>
					aux_out <= "1111";
					pr_state <= state10;
			END CASE;	
	END IF;
	
	END PROCESS;
	resultado <= res;
	s <= s_aux;
ecuacion1 : ecuaciones PORT MAP(aux_out, ecuacion, res, clk, rst);
conv1 : convertidor PORT MAP(res, clk, s_aux);
END ARCHITECTURE;