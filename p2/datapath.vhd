LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath IS
	PORT(
		ecuacion : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		clk, rst : IN STD_LOGIC;
		salida : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END ENTITY datapath;

ARCHITECTURE bhr OF datapath IS

	TYPE state is (state0,state1,state2);
	SIGNAL pr_state : state;
	
	SIGNAL REG_A,REG_B,REG_C,REG_D : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL PC : INTEGER RANGE 0 TO 9999 := 0;
	SIGNAL MAR, IR : STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL ACC, MBR : STD_LOGIC_VECTOR(9 DOWNTO 0);

	TYPE data IS ARRAY (10 DOWNTO 0) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
	TYPE list IS ARRAY (10 DOWNTO 0) OF STD_LOGIC_VECTOR(11 DOWNTO 0);
	TYPE reg IS ARRAY(10 DOWNTO 0) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL reggy, reggu : reg;
	SIGNAL signo1, signo2, zflag, sflag, ovflag, cflag : STD_LOGIC;
	SIGNAL OP : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	
	CONSTANT values : data := (
		0 => "0000000001", -- X
		1 => "0000000001", -- Y
		2 => "0000000001", -- Z
		3 => "0000000100", -- W
		4 => "0000001101", -- 13
		5 => "0000010111", -- 23
		6 => "0000000100", -- 4
		7 => "0000000101", -- 5
		8 => "0000011110", -- 30
		9 => "0000000010", -- 2
		10 => "0000000111" -- 7
	);
	
	
	CONSTANT INSTRUCTIONS : list := (
		("1101"&"0000"&"0000"), -- LOAD R1 <- X
		("1101"&"0001"&"0100"), -- LOAD R2 <- 13 
		("1001"&"0000"&"0001"), -- MULT R1  R2
		("1101"&"0011"&"0000"), -- LOAD R3 <- Y
		("1101"&"0001"&"0101"), -- LOAD R2 <- 23 
		("1001"&"0011"&"0001"), -- MULT R3  R2
		("1101"&"0100"&"0011"), -- LOAD R4 <- W
		("1101"&"0001"&"0110"), -- LOAD R2 <- 4 
		("1010"&"0100"&"0001"), -- DIV R4  R2
		("1010"&"0001"&"0011"), -- SUM R1  R3
		("1010"&"0001"&"0100") -- RES R1  R4
--		("1110" & REG_A),
--		("1110" & REG_A),
--		("1110" & REG_A),
--		("1110" & REG_A),
--		("1110" & REG_A),
--		("1110" & REG_A),
--		("1110" & REG_A),
--		("1110" & REG_A),
--		("1110" & REG_A),
--		("1110" & REG_A),
--		("1110" & REG_A)
	);
	
	COMPONENT ALU IS 
		PORT(
			A,B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			s1,s2 : IN STD_LOGIC;
			sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			R : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			clk, rst : IN STD_LOGIC;
			z_flag, s_flag, ov_flag, c_flag : OUT STD_LOGIC
		);
	END COMPONENT ALU;
BEGIN


	PROCESS(clk) IS
	BEGIN
	IF (RISING_EDGE(clk)) THEN
		IF (rst = '1') THEN
			pr_state <= state0;
			PC <= 0;
		ELSE
			CASE pr_state IS
				-- FETCH
				WHEN state0 =>
					CASE ecuacion IS
						WHEN "00" => 
							MAR <= INSTRUCTIONS(PC);
							IF (PC < 10) THEN
								PC <= PC + 1;
							ELSE
								PC <= PC;
							END IF;
							pr_state <= state1;
						WHEN OTHERS => 
							IR <= "000000000000";
							pr_state <= state1;
					END CASE;
					
				-- DECODE
				WHEN state1 =>
					IF (MAR(11 DOWNTO 8) = "1011") THEN
						reggy(to_integer (unsigned(MAR(7 DOWNTO 4)))) <= values(to_integer (unsigned(MAR(3 DOWNTO 0))));
					--ELSE 
					END IF;
						OP <= MAR(11 DOWNTO 8);
						REG_A <= reggy(to_integer(unsigned(MAR(7 DOWNTO 4))));
						REG_B <= values(to_integer(unsigned(MAR(3 DOWNTO 0))));
					--END IF;
					pr_state <= state2;
				-- EXECUTE
				WHEN state2 =>
					ACC <= ACC + MBR;
					reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= MBR;
					pr_state <= state0;
			END CASE;
		END IF;
		salida <= reggy(PC);
	END IF;
	END PROCESS;
	--
	alu1: ALU PORT MAP(REG_A, REG_B, signo1, signo2, OP, MBR, clk, rst, zflag, sflag, ovflag, cflag);
END ARCHITECTURE;