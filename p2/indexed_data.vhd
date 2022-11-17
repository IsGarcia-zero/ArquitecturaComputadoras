LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY indexed_data IS
	PORT(
		inputsito : STD_LOGIC_VECTOR(1 DOWNTO 0);
		op_code : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		res : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		clk, rst : IN STD_LOGIC
	);
END ENTITY;

ARCHITECTURE bhr OF indexed_data IS
	TYPE estado IS (
	state0,state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11,state12,state13,state14,state15,state16);
	SIGNAL pr_state, n_state : estado;
	SIGNAL pc, ir, mar : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL mbr, acc : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL A,B,X,REG_A,REG_B,REG_C,REG_D : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL dir, opr : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
COMPONENT valores IS
	PORT(
		address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		valor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ALU IS 
	PORT(
		A,B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		R : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		clk, rst : IN STD_LOGIC;
		z_flag, s_flag, ov_flag, c_flag : OUT STD_LOGIC
	);
END COMPONENT ALU;

BEGIN

	estados : PROCESS(clk, rst)
	BEGIN
		IF rst = '0' THEN
			pr_state <= state0;
		ELSIF(RISING_EDGE(clk)) THEN
			pr_state <= n_state; -- present to next
		END IF;
	END PROCESS estados;
	
	PROCESS(inputsito)
	BEGIN
		CASE pr_state IS
			WHEN state0 =>
				A <= X; -- Cargo valor
				n_state <= state1;
			WHEN state1 =>
				B <= X; -- Cargo valor
				n_state <= state2;
			WHEN state2 =>
				opr <= X; -- Cargo operacion
				n_state <= state3;
			WHEN state3 =>
				REG_A <= X; -- Almaceno resultado
				n_state <= state4;
			WHEN state4 =>
				A <= X; -- Cargo valor
				n_state <= state5;
			WHEN state5 =>
				B <= X; -- Cargo valor
				n_state <= state6;
			WHEN state6 =>
				opr <= X; -- Cargo operacion
				n_state <= state7;
			WHEN state7 =>
				REG_B <= X; -- Almaceno resultado
				n_state <= state8;
			WHEN state8 =>
				A <= X; -- Cargo valor
				n_state <= state9;
			WHEN state9 =>
				B <= X; -- Cargo valor
				n_state <= state10;
			WHEN state10 =>
				opr <= X; -- Cargo operacion
				n_state <= state11;
			WHEN state11 =>
				REG_C <= X; -- Almaceno resultado
				n_state <= state12;
			WHEN state12 =>
				opr <= X; -- Cargo operacion
				n_state <= state13;
			WHEN state13 =>
				ir <= X; -- Almaceno resultado
				n_state <= state14;
			WHEN state14 =>
				opr <= X; -- Cargo operacion
				n_state <= state15;
			WHEN state15 =>
				REG_D <= X; -- Almaceno resultado
				n_state <= state16;
			WHEN state16 =>
				res <= REG_D;
	END PROCESS;
END ARCHITECTURE;
