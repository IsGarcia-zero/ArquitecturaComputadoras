LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY indexed_data IS
	PORT(
		op_code : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		res : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF indexed_data IS
	TYPE estado IS (state0,state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11,state12);
	SIGNAL pr_state, n_state : estado;
	SIGNAL pc, ir, mar : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL mbr, acc : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL REG_A,REG_B,REG_C,REG_D : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
COMPONENT valores IS
	PORT(
		address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		valor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	);
END COMPONENT;

BEGIN

	estados : PROCESS(clk, rst)
	BEGIN
		IF rst = '0' THEN
			pr_state <= state0;
		ELSIF(RISING_EDGE(clk)) THEN
			pr_state <= n_state; -- present to next
		END IF;
	END PROCESS estados;
	
	PROCESS(op_code)
	BEGIN
	
	END PROCESS;
END ARCHITECTURE;
