LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY FinalSelection IS
	PORT(
		ecuacion : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		resultado : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		clk,rst :IN STD_LOGIC
	);
END ENTITY FinalSelection;

ARCHITECTURE bhr OF FinalSelection is
	TYPE estado IS (state0,state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11);
	SIGNAL pr_state, n_state: estado;
	SIGNAL res,res1, res2, res3 : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL aux_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
	--SIGNAL rlj_aux, c_aux : STD_LOGIC; 
	SIGNAL sexo : STD_LOGIC_vector(1 DOWNTO 0):="00";

COMPONENT ecuaciones IS 
	PORT( 
		addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
		ec : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		resultado : OUT STD_LOGIC_VECTOR(9 DOWNTO 0); 
		clk,rst : STD_LOGIC 
	); 
END COMPONENT ecuaciones; 

BEGIN
	state_machine: PROCESS(rst, clk)
	BEGIN
		IF(rst ='1') THEN
			pr_state <= state0;
		ELSIF(clk'EVENT AND clk'LAST_VALUE = '0' AND clk = '1') THEN
			pr_state <= n_state;
		END IF;
	END PROCESS state_machine;
	
	PROCESS(ecuacion, pr_state, res1, res2,res3, aux_out)
	BEGIN
	IF(RISING_EDGE(clk)) THEN
	CASE pr_state IS
			WHEN state0 => 
				aux_out <= "0000";
				resultado <="1000000000";
				s <= aux_out;
				n_state <= state1;
			WHEN state1 => 
				aux_out <= "0001";
				s <= aux_out;
				n_state <= state2;
			WHEN state2 => 
				aux_out <= "0010";
				s <= aux_out;
				n_state <= state3;
			WHEN state3 => 
				aux_out <= "0011";
				s <= aux_out;
				n_state <= state4;
			WHEN state4 => 
				aux_out <= "0100";
				s <= aux_out;
				n_state <= state5;
			WHEN state5 => 
				aux_out <= "0101";
				s <= aux_out;
				n_state <= state6;
			WHEN state6 => 
				aux_out <= "0110";
				s <= aux_out;
				n_state <= state7;
			WHEN state7 => 
				aux_out <= "0111";
				s <= aux_out;
				n_state <= state8;
			WHEN state8 => 
				aux_out <= "1000";
				s <= aux_out;
				n_state <= state9;
			WHEN state9 => 
				aux_out <= "1001";
				s <= aux_out;
				n_state <= state10;
			WHEN state10 => 
				aux_out <= "1010";
				s <= aux_out;
				n_state <= state11;
			WHEN state11 => 
				aux_out <= "1011";
				s <= aux_out;
				n_state <= state11;
		END CASE;
		resultado <= res;
		END IF;
	END PROCESS;
--	WITH ecuacion SELECT resultado <=
--		res1 WHEN "00",
--		res2 WHEN "01",
--		res3 WHEN "10",
--		"0000000000" WHEN "11";
ec1: ecuaciones PORT MAP(aux_out, sexo, res, clk, rst);
--reloj: frecuencia_5Hz PORT MAP(clk, rst,rlj_aux, c_aux);	
END ARCHITECTURE;