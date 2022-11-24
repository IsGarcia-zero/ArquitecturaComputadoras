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
	TYPE reg IS ARRAY(0 DOWNTO 7) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL reggy, reggu : reg;
	SIGNAL signo1, signo2, zflag, sflag, ovflag, cflag : STD_LOGIC;
	SIGNAL wrt, flag : STD_LOGIC:= '0';
	SIGNAL OP, dir : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	
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
		0 => ("1101"&"0000"&"0000"), -- LOAD R1 <- X
		1 => ("1101"&"0001"&"0100"), -- LOAD R2 <- 13 
		2 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		3 => ("1101"&"0010"&"0001"), -- LOAD R3 <- Y
		4 => ("1101"&"0001"&"0101"), -- LOAD R2 <- 23 
		5 => ("1001"&"0010"&"0001"), -- MULT R3  R2
		6 => ("1101"&"0011"&"0011"), -- LOAD R4 <- W
		7 => ("1101"&"0001"&"0110"), -- LOAD R2 <- 4 
		8 => ("1010"&"0100"&"0001"), -- DIV R4  R2
		9 => ("0111"&"0001"&"0010"), -- SUM R1  R3
		10 => ("0111"&"0001"&"0100") -- RES R1  R4
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
	
	COMPONENT registros IS
		PORT(
			address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			wrt, clk : IN STD_LOGIC;
			data_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			salida : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
		);
	END COMPONENT registros;
BEGIN


	PROCESS(clk) IS
	BEGIN
		IF (rst = '1') THEN
			pr_state <= state0;
			PC <= 0;
		ELSIF (RISING_EDGE(clk)) THEN
			CASE pr_state IS
				WHEN state0 => -- FETCH
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
				WHEN state1 => -- DECODE
					IF (MAR(11 DOWNTO 8) = "1101") THEN
						reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= values(to_integer(unsigned(MAR(3 DOWNTO 0))));
						pr_state <= state2;
					ELSE
						REG_A <= reggy(to_integer(unsigned(MAR(7 DOWNTO 4))));
						REG_B <= values(to_integer(unsigned(MAR(3 DOWNTO 0))));
						OP <= MAR(11 DOWNTO 8);
						IF(flag = '1') THEN
							pr_state <= state2;
						END IF;
						flag <= '1';
					END IF;
				WHEN state2 => -- EXECUTE
					
					--IF () THEN
					--END IF;
					--reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= MBR;
					flag <= '0';
					pr_state <= state0;
			END CASE;
		salida <= MBR;
		END IF;
		
	END PROCESS;
	alu1: ALU PORT MAP(REG_A, REG_B, signo1, signo2, OP, MBR, clk, rst, zflag, sflag, ovflag, cflag);
	regs1 : registros PORT MAP(dir, wrt, clk, REG_D, REG_C);
END ARCHITECTURE;