LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath IS
	PORT(
		ecuacion : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		clk, rst : IN STD_LOGIC;
		salida, s_p1, s_p2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		ins : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		z_flag, s_flag, ov_flag, c_flag : OUT STD_LOGIC
	);
END ENTITY datapath;

ARCHITECTURE bhr OF datapath IS

	TYPE state is (state0,state1,state2);
	SIGNAL pr_state : state;
	
	SIGNAL REG_A,REG_B,REG_C,REG_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL PC, PC_AUX : INTEGER RANGE 0 TO 9999 := 0;
	
	SIGNAL MAR, IR : STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL ACC: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL MBR : STD_LOGIC_VECTOR(15 DOWNTO 0);

	SIGNAL buff1: STD_LOGIC_VECTOR(7 DOWNTO 0):= "00001011";
	SIGNAL buff2: STD_LOGIC_VECTOR(7 DOWNTO 0);

	TYPE data IS ARRAY (11 DOWNTO 0) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
	TYPE list IS ARRAY (39 DOWNTO 0) OF STD_LOGIC_VECTOR(11 DOWNTO 0);
	TYPE reg IS ARRAY(0 TO 7) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL reggy, reggu : reg;
	SIGNAL zflag, sflag, ovflag, cflag : STD_LOGIC;
	SIGNAL wrt, flag : STD_LOGIC:= '0';
	SIGNAL OP, dir : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL data_in : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	SIGNAL signo1, signo2 : STD_LOGIC :='0';
	
	CONSTANT values : data := (
		0 => "0000000110", -- X
		1 => "0000001001", -- Y
		2 => "0000000111", -- Z
		3 => "0000001010", -- W
		4 => "0000010001", -- 17
		5 => "0000011001", -- 25
		6 => "0000000100", -- -4
		7 => "0000001010", -- 10
		8 => "0000011110", -- 30
		9 => "0000000010", -- -2
		10 => "1000000111", -- -7
		11 => "0000000000"
	);
	
	CONSTANT jmps : data := (
		0 => "0100011010", -- X
		1 => "0001101011", -- Y
		2 => "0100011010", -- Z
		3 => "0010011101", -- W
		4 => "0000010001", -- 17
		5 => "0000011001", -- 25
		6 => "0000000100", -- -4
		7 => "0000001010", -- 10
		8 => "0000011110", -- 30
		9 => "0000000010", -- -2
		10 => "1000000111", -- -7
		11 => "0000000000"
	);
	
	
	CONSTANT INSTRUCTIONS : list := (
	
		-- ECUACION 1 (17x+25y-w/4)
		0 => ("1101"&"0000"&"0000"), -- LOAD R1 <- X
		1 => ("1101"&"0001"&"0100"), -- LOAD R2 <- 17 
		2 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		3 => ("1101"&"0010"&"0001"), -- LOAD R3 <- Y
		4 => ("1101"&"0001"&"0101"), -- LOAD R2 <- 25 
		5 => ("1001"&"0010"&"0001"), -- MULT R3  R2
		6 => ("1101"&"0011"&"0011"), -- LOAD R4 <- W
		7 => ("1101"&"0001"&"0110"), -- LOAD R2 <- -4 
		8 => ("1010"&"0011"&"0001"), -- DIV R4  R2
		9 => ("0111"&"0000"&"0010"), -- SUM R1  R3
		10 => ("1000"&"0000"&"0011"), -- RES R1  R4
		11 => ("1111"&"0000"&"0000"), -- NOT OP
		
		-- ECUACION 2 (10x**2+30x-z/2)0100011010
		12 => ("1101"&"0000"&"0000"), -- LOAD R1 <- X
		13 => ("1101"&"0001"&"0000"), -- LOAD R2 <- X
		14 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		15 => ("1101"&"0100"&"0111"), -- LOAD R5  10
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
		
		-- ECUACION (-x**3-7z+w/10)
		26 => ("1101"&"0000"&"0000"), -- LOAD R1 <- X
		27 => ("1101"&"0001"&"0000"), -- LOAD R2 <- X
		28 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		29 => ("1101"&"0001"&"0000"), -- LOAD R2 <- X
		30 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		31 => ("1101"&"0010"&"0010"), -- LOAD R3 <- z
		32 => ("1101"&"0001"&"1010"), -- LOAD R2 <- -7
		33 => ("1001"&"0010"&"0001"), -- MULT R3  R2
		34 => ("1101"&"0011"&"0011"), -- LOAD R4 <- w
		35 => ("1101"&"0001"&"0111"), -- LOAD R2 <- 10
		36 => ("1010"&"0011"&"0001"), -- DIV R4  R2
		37 => ("1000"&"0000"&"0010"), -- SUM R1  R3
		38 => ("0111"&"0000"&"0011"), -- RES R1  R4
		39 => ("1111"&"0000"&"0000") -- NOT OP
	);
	
	COMPONENT ALU IS 
		PORT(
			A,B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			R : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
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
								IF (reggy(0)(9) = '1') THEN
									salida <= "000000" & '0' & reggy(0)(8 DOWNTO 0);
									z_flag <= zflag;
									s_flag <= sflag;
									ov_flag <= ovflag;
									c_flag <= cflag;
								ELSE
									salida <= reggy(0);
									z_flag <= zflag;
									s_flag <= sflag;
									ov_flag <= ovflag;
									c_flag <= cflag;
								END IF;
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
									IF (reggy(0)(9) = '1') THEN
										salida <= "000000" & '0' & reggy(0)(8 DOWNTO 0);
										z_flag <= zflag;
										s_flag <= sflag;
										ov_flag <= ovflag;
										c_flag <= cflag;
									ELSE
										salida <= reggy(0);
										z_flag <= zflag;
										s_flag <= sflag;
										ov_flag <= ovflag;
										c_flag <= cflag;
									END IF;
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
									IF (reggy(0)(9) = '1') THEN
										salida <= "000000" & '0' & reggy(0)(8 DOWNTO 0);
										z_flag <= zflag;
										s_flag <= sflag;
										ov_flag <= ovflag;
										c_flag <= cflag;
									ELSE
										salida <= reggy(0);
										z_flag <= zflag;
										s_flag <= sflag;
										ov_flag <= ovflag;
										c_flag <= cflag;
									END IF;
									pr_state <= state0;
								END IF;
							END IF;
							MAR <= INSTRUCTIONS(PC);	
						WHEN OTHERS => 
							salida <= "0000000000000000";
							pr_state <= state1;
					END CASE;
				WHEN state1 => -- DECODE
					IF (MAR(11 DOWNTO 8) = "1101") THEN
						REG_D <= "000000"&values(to_integer(unsigned(MAR(3 DOWNTO 0))));
					ELSIF (MAR(11 DOWNTO 8) = "1110") THEN
						IF(MAR(7 DOWNTO 4) /= reggy(7)(3 downto 0)) THEN
							PC_AUX <= to_integer(unsigned(jmps(to_integer(unsigned(MAR(3 DOWNTO 0)))))) - 1;
						ELSIF(MAR(7 DOWNTO 4) = "0000") THEN
							PC_AUX <= to_integer(unsigned(jmps(to_integer(unsigned(MAR(3 DOWNTO 0)))))) - 1;
						ELSE
							PC_AUX <= PC;
						END IF;
					ELSE
						OP <= MAR(11 DOWNTO 8);
						REG_A <= reggy(to_integer(unsigned(MAR(7 DOWNTO 4))));
						s_p1 <= REG_A;
						REG_B <= reggy(to_integer(unsigned(MAR(3 DOWNTO 0))));
						s_p2 <= REG_B;
					END IF;
					pr_state <= state2;
				WHEN state2 => -- EXECUTE
					IF (MAR(11 DOWNTO 8) = "1101") THEN
						reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= "000000" & REG_D(9 downto 0);
					ELSIF(MAR(11 DOWNTO 8) = "1110") THEN
						PC <= PC_AUX; 
					ELSIF(MAR(11 DOWNTO 8) = "1011") THEN
						reggy(7) <= MBR;
					ELSE
						IF (sflag = '1') THEN
							reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= '1' & MBR(14 DOWNTO 0);
						ELSE
							reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= MBR;
						END IF;
					END IF;
					pr_state <= state0;
			END CASE;
		END IF;
		ins <= MAR;
	END PROCESS;
	alu1: ALU PORT MAP(REG_A, REG_B, OP, MBR, clk, rst, zflag, sflag, ovflag, cflag);
END ARCHITECTURE;