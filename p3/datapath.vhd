LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath IS
	PORT(
		ecuacion : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		clk, rst : IN STD_LOGIC;
		salida, s1,s2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		--salida: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		ins : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		z_flag, s_flag, ov_flag, c_flag : OUT STD_LOGIC
	);
END ENTITY datapath;

ARCHITECTURE bhr OF datapath IS

	TYPE state is (state0,state1,state2,state3);
	SIGNAL pr_state : state;
	
	SIGNAL REG_A,REG_B,REG_C,REG_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL PC, PC_AUX, OFFSET : INTEGER RANGE 0 TO 9999 := 0;
	
	SIGNAL MAR, IR : STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL ACC: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL MBR : STD_LOGIC_VECTOR(15 DOWNTO 0);

	SIGNAL buff1: STD_LOGIC_VECTOR(7 DOWNTO 0):= "00001011";
	SIGNAL buff2: STD_LOGIC_VECTOR(7 DOWNTO 0);

	TYPE data IS ARRAY (11 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	TYPE cmp IS ARRAY (10 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	TYPE list IS ARRAY (51 DOWNTO 0) OF STD_LOGIC_VECTOR(11 DOWNTO 0);
	TYPE reg IS ARRAY(0 TO 7) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL reggy, reggu : reg;
	SIGNAL zflag, sflag, ovflag, cflag : STD_LOGIC;
	SIGNAL wrt, flag : STD_LOGIC:= '0';
	SIGNAL OP, dir : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL data_in : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	SIGNAL signo1, signo2 : STD_LOGIC :='0';
	
	CONSTANT values : data := (
	-- Datos precargados en la "ROM" para usar despues en ecuacines
		0 => "0000000000000100", -- X (4)
		1 => "0000000000000101", -- Y (5)
		2 => "0000000000000111", -- Z (7)
		3 => "0000000000001010", -- W (10)
		4 => "0000000000010001", -- 17
		5 => "0000000000011001", -- 25
		6 => "0000000000000100", -- 4
		7 => "0000000000001010", -- 10
		8 => "0000000000011110", -- 30
		9 => "0000000000000010", -- 2
		10 => "1000000000000001", -- -1
		11 => "0000000000000111" -- 7
	);
	
	-- Saltos, hasta 65536 instrucciones
	CONSTANT jumps : data := (
		0 => "0000000000001010", -- 5 a 10
		1 => "0000000000000000", -- 
		2 => "0000000000000000", -- 
		3 => "0000000000000000", -- 
		4 => "0000000000000000", -- 
		5 => "0000000000000000", -- 
		6 => "0000000000000000", -- 
		7 => "0000000000000000", -- 
		8 => "0000000000000000", -- 
		9 => "0000000000000000", -- 
		10 => "0000000000000000", -- 
		11 => "0000000000000000" -- 
	);
	
	CONSTANT INSTRUCTIONS : list := (
	
		-- ECUACION 1: (17x+25y-w/4)
		0 => ("1101"&"0000"&"0000"), -- LOAD R1 <- X
		1 => ("1101"&"0001"&"0100"), -- LOAD R2 <- 17 
		2 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		3 => ("1101"&"0010"&"0001"), -- LOAD R3 <- Y
		4 => ("1101"&"0001"&"0101"), -- LOAD R2 <- 25 
		5 => ("1001"&"0010"&"0001"), -- MULT R3  R2
		6 => ("1110"&"0010"&"0000"), -- jump to
		7 => ("1101"&"0011"&"0011"), -- LOAD R4 <- W
		8 => ("1101"&"0001"&"0110"), -- LOAD R2 <- -4 
		9 => ("1010"&"0011"&"0001"), -- DIV R4  R2
		10 => ("0111"&"0000"&"0010"), -- SUM R1  R3
		11 => ("1000"&"0000"&"0011"), -- RES R1  R4
		12 => ("1111"&"0000"&"0000"), -- NOT OP
		
		-- ECUACION 2: (10x**2+30x-z/2)
		13 => ("1101"&"0000"&"0000"), -- LOAD R1 <- X
		14 => ("1101"&"0001"&"0000"), -- LOAD R2 <- X
		15 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		16 => ("1101"&"0100"&"0111"), -- LOAD R5  10
		17 => ("1001"&"0000"&"0100"), -- MUL R1  R5
		18 => ("1101"&"0010"&"0000"), -- LOAD R3 <- X
		19 => ("1101"&"0001"&"1000"), -- LOAD R2 <- 30
		20 => ("1001"&"0010"&"0001"), -- MULT R3  R2
		21 => ("1101"&"0011"&"0010"), -- LOAD R4 <- Z
		22 => ("1101"&"0001"&"1001"), -- LOAD R2 <- -2
		23 => ("1010"&"0011"&"0001"), -- DIV R4  R2
		24 => ("0111"&"0000"&"0010"), -- SUM R1  R3
		25 => ("1000"&"0000"&"0011"), -- RES R1  R4
		26 => ("1111"&"0000"&"0000"), -- NOT OP
		
		-- ECUACION 3: (-x**3-7z+w/10)
		27 => ("1101"&"0000"&"0000"), -- LOAD R1 <- X
		28 => ("1101"&"0001"&"0000"), -- LOAD R2 <- X
		29 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		30 => ("1101"&"0001"&"0000"), -- LOAD R2 <- X
		31 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		32 => ("1101"&"0001"&"1010"), -- LOAD R2 <- -1
		33 => ("1001"&"0000"&"0001"), -- MULT R1  R2
		34 => ("1101"&"0010"&"0010"), -- LOAD R3 <- z
		35 => ("1101"&"0001"&"1011"), -- LOAD R2 <- 7
		36 => ("1001"&"0010"&"0001"), -- MULT R3  R2
		37 => ("1101"&"0011"&"0011"), -- LOAD R4 <- w
		38 => ("1101"&"0001"&"0111"), -- LOAD R2 <- 10
		39 => ("1010"&"0011"&"0001"), -- DIV R4  R2
		40 => ("1000"&"0000"&"0010"), -- RES R1  R3
		41 => ("0111"&"0000"&"0011"), -- SUMA R1  R4
		42 => ("1111"&"0000"&"0000"), -- NOT OP
		-- nuevas
		43 => ("1101"&"0010"&"0010"), -- LOAD R3 <- z
		44 => ("1101"&"0001"&"1011"), -- LOAD R2 <- 7
		45 => ("1001"&"0010"&"0001"), -- MULT R3  R2
		46 => ("1101"&"0011"&"0011"), -- LOAD R4 <- w
		47 => ("1101"&"0001"&"0111"), -- LOAD R2 <- 10
		48 => ("1010"&"0011"&"0001"), -- DIV R4  R2
		49 => ("1000"&"0000"&"0010"), -- RES R1  R3
		50 => ("0111"&"0000"&"0011"), -- SUMA R1  R4
		51 => ("1111"&"0000"&"0000") -- NOT OP
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
						WHEN "00" =>  -- Comienza la ecuacion 1
							PC <= PC + 1;
							pr_state <= state1;
							MAR <= INSTRUCTIONS(PC);	
						WHEN "01" => --Comienza la ecuacion 2
							IF (PC < 12) THEN
								PC <= 13;
							ELSE
								PC <= PC + 1;
								pr_state <= state1;
							END IF;
							MAR <= INSTRUCTIONS(PC);
						WHEN "10" => --Comienza la ecuacion 3
							IF (PC < 26) THEN
								PC <= 27;
							ELSE
								PC <= PC + 1;
								pr_state <= state1;
							END IF;
							MAR <= INSTRUCTIONS(PC);	
						WHEN OTHERS => 
							salida <= "0000000000000000";
							z_flag <= '1';
							pr_state <= state1;
					END CASE;
				WHEN state1 => -- DECODE
					IF (MAR(11 DOWNTO 8) /= "1111") THEN
						IF (MAR(11 DOWNTO 8) = "1101") THEN --En caso que la instruccion sea load
							REG_D <= values(to_integer(unsigned(MAR(3 DOWNTO 0))));
						ELSIF (MAR(11 DOWNTO 8) = "1110") THEN -- jump directo
							OFFSET <= to_integer(unsigned(jumps(to_integer(unsigned(MAR(3 DOWNTO 0))))));
						ELSIF (MAR(11 DOWNTO 8) = "1100") THEN -- branch con banderas
							IF (zflag = '1') THEN -- zflag, sflag, ovflag, cflag
								OFFSET <= 0;
							ELSIF (sflag = '1') THEN
								OFFSET <= 0;
							ELSIF (ovflag = '1') THEN
								OFFSET <= 0;
							ELSE
								OFFSET <= 0;
							END IF;
						ELSE
							-- El resto de operaciones son controladas por la ALU
							OP <= MAR(11 DOWNTO 8);
							REG_A <= reggy(to_integer(unsigned(MAR(7 DOWNTO 4))));
							s1 <= REG_A;
							REG_B <= reggy(to_integer(unsigned(MAR(3 DOWNTO 0))));
							s2 <= REG_B;
						END IF;
					END IF;
					pr_state <= state2;
				WHEN state2 => -- EXECUTE
					IF (MAR(11 DOWNTO 8) = "1111") THEN
						reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= MBR;
						pr_state <= state3;
					ELSE
						IF (MAR(11 DOWNTO 8) = "1101") THEN
							reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= REG_D;		
						ELSIF(MAR(11 DOWNTO 8) = "1011") THEN
							reggy(7) <= MBR; -- Aqui se guarda en el ultimo registro el resultado de la comparacion
						ELSIF(MAR(11 DOWNTO 8) = "1110") THEN
							PC <= OFFSET; --saltooo
							OFFSET <= 0;
						ELSE
							IF (sflag = '1') THEN
								reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= '1' & MBR(14 DOWNTO 0);
							ELSE
								reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= MBR;
							END IF;
						END IF;
					pr_state <= state0;
					END IF;
				WHEN state3 => 
					IF (reggy(0)(15) = '1') THEN
						salida <= '0' & reggy(0)(14 DOWNTO 0);
						z_flag <= zflag;
						s_flag <= '1';
						ov_flag <= ovflag;
						c_flag <= cflag;
					ELSE
						salida <= reggy(0);
						z_flag <= zflag;
						s_flag <= sflag;
						ov_flag <= ovflag;
						c_flag <= cflag;
					END IF;
					pr_state <= state3;
			END CASE;
		END IF;
		ins <= MAR;
	END PROCESS;
	alu1: ALU PORT MAP(REG_A, REG_B, OP, MBR, clk, rst, zflag, sflag, ovflag, cflag);
END ARCHITECTURE;