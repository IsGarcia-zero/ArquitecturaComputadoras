LIBRARY IEEE; 
 
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
 
ENTITY ecuaciones IS 
 PORT( 
  addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
  ec : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
  resultado : OUT STD_LOGIC_VECTOR(9 DOWNTO 0); 
  clk,rst : STD_LOGIC
 ); 
END ENTITY ecuaciones; 
 
ARCHITECTURE bhr OF ecuaciones IS 
	TYPE estado IS (state0,state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11);
	SIGNAL pr_state, n_state: estado;
	
	SIGNAL As,Bs, res, res_aux : STD_LOGIC_VECTOR(9 DOWNTO 0); 
	SIGNAL data : STD_LOGIC_VECTOR(9 DOWNTO 0); 
	SIGNAL bcd, bcd_f : STD_LOGIC_VECTOR(15 DOWNTO 0); 
	SIGNAL MREG : STD_LOGIC_VECTOR(23 DOWNTO 0); 
	SIGNAL addr1,addr2: STD_LOGIC_VECTOR(3 DOWNTO 0); 
	SIGNAL f1,f2,f3,f4,c_aux, rlj_aux, wrt : STD_LOGIC; 
	TYPE registrosos IS ARRAY(15 DOWNTO 0) OF STD_LOGIC_VECTOR(9 DOWNTO 0);

	SIGNAL registro : registrosos := (
		0 => "0000000000",
		1 => "0000000000",
		2 => "0000000000",
		3 => "0000000000",
		4 => "0000000000",
		5 => "0000000000",
		6 => "0000000000",
		7 => "0000000000",
		8 => "0000000000",
		9 => "0000000000",
		10 => "0000000000",
		11 => "0000000000",
		12 => "0000000000",
		13 => "0000000000",
		14 => "0000000000",
		15 => "0000000000"
	);
COMPONENT ALU IS  
 PORT( 
  A,B : IN STD_LOGIC_VECTOR(9 DOWNTO 0); 
  sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
  R : OUT STD_LOGIC_VECTOR(9 DOWNTO 0); 
  clk, rst : IN STD_LOGIC;
  z_flag, s_flag, ov_flag, c_flag : OUT STD_LOGIC 
 ); 
END COMPONENT ALU; 
 
COMPONENT valores IS
	PORT(
		address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		valor : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

BEGIN 
	-- ONE PROCESS STATE MACHINE
	PROCESS(clk)
	BEGIN
	IF (RISING_EDGE(clk)) THEN
		IF rst = '1' THEN
			pr_state <= state0;
		ELSE
			CASE pr_state IS
				WHEN state0 =>
					addr1 <= "0000"; --x
					addr2 <= "0100"; -- 13
					pr_state <= state1;
				WHEN state1 =>
					MREG(23 DOWNTO 14) <= As; 
					MREG(13 DOWNTO 4) <= Bs; 
					MREG(3 DOWNTO 0) <= "1001";
					pr_state <= state2;
				WHEN state2 =>
					registro(0) <= res;
					addr1 <= "0001"; -- y
					addr2 <= "0101"; -- 23
					pr_state <= state3;
				WHEN state3 =>
					MREG(23 DOWNTO 14) <= As;
					MREG(13 DOWNTO 4) <= Bs;
					MREG(3 DOWNTO 0) <= "1001";
					pr_state <= state4;
				WHEN state4 =>
					registro(1) <= res;
					addr1 <= "0011"; -- w
					addr2 <= "0110"; -- 4
					pr_state <= state5;
				WHEN state5 =>
					MREG(23 DOWNTO 14) <= As;
					MREG(13 DOWNTO 4) <= Bs;
					MREG(3 DOWNTO 0) <= "1010";
					pr_state <= state6;
				WHEN state6 =>
					registro(2) <= res;
					MREG(23 DOWNTO 14) <= registro(0);
					MREG(13 DOWNTO 4) <= registro(1);
					MREG(3 DOWNTO 0) <= "0111";
					pr_state <= state7;
				WHEN state7 =>
					registro(3) <= res;
					pr_state <= state8;
				WHEN state8 =>
					
					MREG(23 DOWNTO 14) <= registro(3);
					MREG(13 DOWNTO 4) <= registro(2);
					MREG(3 DOWNTO 0) <= "1000";
					pr_state <= state9;
				WHEN state9 =>
					registro(4) <= res;
				WHEN OTHERS =>
					pr_state <= state10;
			END CASE;
		END IF;
	END IF;
	
	END PROCESS; 
	resultado <= res;
alu1 : ALU PORT MAP(MREG(23 DOWNTO 14), MREG(13 DOWNTO 4), MREG(3 DOWNTO 0), res, clk,rst, f1,f2,f3,f4); 
val1 : valores PORT MAP(addr1, As); 
val2 : valores PORT MAP(addr2, Bs); 
-- 
END ARCHITECTURE;
