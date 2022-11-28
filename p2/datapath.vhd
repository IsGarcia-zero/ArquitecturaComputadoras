LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath IS
	PORT(
		ecuacion : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		clk, rst : IN STD_LOGIC;
		-- salida, s_p1, s_p2 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		salida : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		-- ins : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		sign_f : out STD_LOGIC
	);
END ENTITY datapath;

ARCHITECTURE bhr OF datapath IS

	TYPE state is (state0,state1,state2);
	SIGNAL pr_state : state;
	
	SIGNAL REG_A,REG_B,REG_C,REG_D : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL PC : INTEGER RANGE 0 TO 9999 := 0;
	
	SIGNAL MAR, IR : STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL ACC, MBR : STD_LOGIC_VECTOR(9 DOWNTO 0);

	SIGNAL buff1: STD_LOGIC_VECTOR(7 DOWNTO 0):= "00001011";
	SIGNAL buff2: STD_LOGIC_VECTOR(7 DOWNTO 0);

	TYPE data IS ARRAY (11 DOWNTO 0) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
	TYPE list IS ARRAY (39 DOWNTO 0) OF STD_LOGIC_VECTOR(11 DOWNTO 0);
	TYPE reg IS ARRAY(0 TO 7) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL reggy, reggu : reg;
	SIGNAL zflag, sflag, ovflag, cflag : STD_LOGIC;
	SIGNAL wrt, flag : STD_LOGIC:= '0';
	SIGNAL OP, dir : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL data_in : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	SIGNAL signo1, signo2 : STD_LOGIC :='0';
	
	CONSTANT values : data := (
		0 => "0000000010", -- X
		1 => "0000000010", -- Y
		2 => "0000010000", -- Z
		3 => "0000011111", -- W
		4 => "0000001101", -- 13
		5 => "0000010111", -- 23
		6 => "1000000100", -- -4
		7 => "1000000101", -- -5
		8 => "0000011110", -- 30
		9 => "0000000010", -- -2
		10 => "1000000111", -- -7
		11 => "0000000101" -- 5
	);
	
	
	CONSTANT INSTRUCTIONS : list := (
		-- ECUACION 1
		0 => ("1101"&"0000"&"0000"), -- LOAD R1 <- X
		1 => ("1101"&"0001"&"0100"), -- LOAD R2 <- 13 
		2 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		3 => ("1101"&"0010"&"0001"), -- LOAD R3 <- Y
		4 => ("1101"&"0001"&"0101"), -- LOAD R2 <- 23 
		5 => ("1001"&"0010"&"0001"), -- MULT R3  R2
		6 => ("1101"&"0011"&"0011"), -- LOAD R4 <- W
		7 => ("1101"&"0001"&"0110"), -- LOAD R2 <- -4 
		8 => ("1010"&"0011"&"0001"), -- DIV R4  R2
		9 => ("0111"&"0000"&"0010"), -- SUM R1  R3
		10 => ("1000"&"0000"&"0011"), -- RES R1  R4
		11 => ("1111"&"0000"&"0000"), -- NOT OP
		-- ECUACION 2
		12 => ("1101"&"0000"&"0000"), -- LOAD R1 <- X
		13 => ("1101"&"0001"&"0000"), -- LOAD R2 <- X
		14 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		15 => ("1101"&"0100"&"1011"), -- LOAD R5  5
		16 => ("1001"&"0000"&"0100"), -- MUL R1  R5
		17 => ("1101"&"0010"&"0000"), -- LOAD R3 <- X
		18 => ("1101"&"0001"&"1000"), -- LOAD R2 <- 30
		19 => ("1001"&"0010"&"0001"), -- MULT R3  R2
		20 => ("1101"&"0011"&"0010"), -- LOAD R4 <- Z
		21 => ("1101"&"0001"&"1001"), -- LOAD R2 <- -2
		22 => ("1010"&"0011"&"0001"), -- DIV R4  R2
		23 => ("0111"&"0000"&"0010"), -- SUM R1  R3
		24 => ("1000"&"0000"&"0011"), -- RES R1  R4
		25 => ("1111"&"0000"&"0000"), -- NOT OP
		-- ECUACION 3
		26 => ("1101"&"0000"&"0000"), -- LOAD R1 <- X
		27 => ("1101"&"0001"&"0000"), -- LOAD R2 <- X
		28 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		29 => ("1101"&"0100"&"1010"), -- LOAD R5  -7
		30 => ("1001"&"0000"&"0100"), -- MUL R1  R5
		31 => ("1101"&"0010"&"0010"), -- LOAD R3 <- z
		32 => ("1101"&"0001"&"0111"), -- LOAD R2 <- -5
		33 => ("1001"&"0010"&"0001"), -- MULT R3  R2
		34 => ("1101"&"0011"&"0011"), -- LOAD R4 <- w
		35 => ("1101"&"0001"&"1011"), -- LOAD R2 <- 5
		36 => ("1010"&"0011"&"0001"), -- DIV R4  R2
		37 => ("0111"&"0000"&"0010"), -- SUM R1  R3
		38 => ("1000"&"0000"&"0011"), -- RES R1  R4
		39 => ("1111"&"0000"&"0000") -- NOT OP
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
	
BEGIN


	PROCESS(clk, rst, REG_A, REG_B, REG_C, REG_D) IS
	BEGIN
		IF (rst = '0') THEN
			pr_state <= state0;
			PC <= 0;
		ELSIF (RISING_EDGE(clk)) THEN
			CASE pr_state IS
				WHEN state0 => -- FETCH
					CASE ecuacion IS
						WHEN "00" => 
							IF (PC < 11) THEN
								PC <= PC + 1;
								pr_state <= state1;
							ELSE
								salida <= reggy(0);
								pr_state <= state0;
							END IF;
							MAR <= INSTRUCTIONS(PC);	
							
						WHEN "01" => 
							IF (PC < 11) THEN
								PC <= 12;
							ELSE
								IF (PC < 25) THEN
									PC <= PC + 1;
									pr_state <= state1;
								ELSE
									salida <= reggy(0);
									pr_state <= state0;
								END IF;
							END IF;
							MAR <= INSTRUCTIONS(PC);
						WHEN "10" => 
							IF (PC < 25) THEN
								PC <= 26;
							ELSE
								IF (PC < 39) THEN
									PC <= PC + 1;
									pr_state <= state1;
								ELSE
									salida <= reggy(0);
									pr_state <= state0;
								END IF;
							END IF;
							MAR <= INSTRUCTIONS(PC);	
						WHEN OTHERS => 
							salida <= "0000000000";
							pr_state <= state1;
					END CASE;
				WHEN state1 => -- DECODE
					IF (MAR(11 DOWNTO 8) = "1101") THEN
						REG_D <= values(to_integer(unsigned(MAR(3 DOWNTO 0))));
					ELSE
						OP <= MAR(11 DOWNTO 8);
						REG_A <= reggy(to_integer(unsigned(MAR(7 DOWNTO 4))));
						-- s_p1 <= REG_A;
						REG_B <= reggy(to_integer(unsigned(MAR(3 DOWNTO 0))));
						-- s_p2 <= REG_B;
					END IF;
					pr_state <= state2;
				WHEN state2 => -- EXECUTE
					flag <= sflag;
					IF (MAR(11 DOWNTO 8) = "1101") THEN
						reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= REG_D;
					ELSE
--						IF (flag = '1') THEN
--							reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= '1' & MBR(8 DOWNTO 0);
--						ELSE
							reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= MBR;
						--END IF;
						-- salida <= reggy(to_integer(unsigned(MAR(7 DOWNTO 4))));
					END IF;
					pr_state <= state0;
			END CASE;
		END IF;
		-- ins <= MAR;
	END PROCESS;
	sign_f <= sflag;
	alu1: ALU PORT MAP(REG_A, REG_B, OP, MBR, clk, rst, zflag, sflag, ovflag, cflag);
END ARCHITECTURE;