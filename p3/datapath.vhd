LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath IS
	PORT(
		ecuacion : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		clk, rst : IN STD_LOGIC;
		salida, s_p1, s_p2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		ins : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		z_flag, s_flag, ov_flag, c_flag : OUT STD_LOGIC
	);
END ENTITY datapath;

ARCHITECTURE bhr OF datapath IS

	TYPE state is (state0,state1,state2);
	SIGNAL pr_state : state;
	
	SIGNAL REG_A,REG_B,REG_C,REG_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL PC, PC_AUX : INTEGER RANGE 0 TO 9999 := 0;
	
	SIGNAL MAR, IR : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ACC: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL MBR : STD_LOGIC_VECTOR(15 DOWNTO 0);

	SIGNAL buff1: STD_LOGIC_VECTOR(7 DOWNTO 0):= "00001011";
	SIGNAL buff2: STD_LOGIC_VECTOR(7 DOWNTO 0);

	TYPE data IS ARRAY (11 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	TYPE cmp IS ARRAY (10 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	TYPE list IS ARRAY (39 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	TYPE reg IS ARRAY(0 TO 7) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL reggy, reggu : reg;
	SIGNAL zflag, sflag, ovflag, cflag : STD_LOGIC;
	SIGNAL wrt, flag : STD_LOGIC:= '0';
	SIGNAL OP, dir : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL data_in : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	SIGNAL signo1, signo2 : STD_LOGIC :='0';
	
	CONSTANT values : data := (
	-- Datos precargados en la "ROM" para usar despues en ecuacines
		0 => "0000000000000110", -- X (6)
		1 => "0000000000001001", -- Y (9)
		2 => "0000000000000111", -- Z (7)
		3 => "0000000000001010", -- W (10)
		4 => "0000000000010001", -- 17
		5 => "0000000000011001", -- 25
		6 => "0000000000000100", -- -4
		7 => "0000000000001010", -- 10
		8 => "0000000000011110", -- 30
		9 => "0000000000000010", -- -2
		10 => "0000001000000111", -- -7
		11 => "0000000000000000"
	);
	
	CONSTANT cmprs : cmp := (
	--Aqui van almacenadas las "configuraciones" de el comparador y de las flags
	--Carry, Zero, Overflow, Sign, Mayor, Igual, Menor
		0  => "0000000000000001", -- El numero es menor
		1  => "0000000000000010", -- El numero es igual
		2  => "0000000000000011", -- El numero es menor o igual
		3  => "0000000000000100", -- El numero es mayor
		4  => "0000000000000101", -- El numero es diferente
		5  => "0000000000000110", -- El numero es mayor o igual
		6  => "0000000000001000", -- El numero es negativo
		7  => "0000000000010000", -- El numero es muy grande
		8  => "0000000000100000", -- El numero es cero
		9  => "0000000001000000", -- El numero tiene un bit extra
		10 => "0000000000000000"  -- Salto directo sin comprobacion
	);
	
	
	CONSTANT INSTRUCTIONS : list := (
	
		-- ECUACION 1: (17x+25y-w/4)
		0 => ("0000"&"1101"&"0000"&"0000"), -- LOAD R1 <- X
		1 => ("0000"&"1101"&"0001"&"0100"), -- LOAD R2 <- 17 
		2 => ("0000"&"1001"&"0000"&"0001"), -- MULT R1  R2
		3 => ("0000"&"1101"&"0010"&"0001"), -- LOAD R3 <- Y
		4 => ("0000"&"1101"&"0001"&"0101"), -- LOAD R2 <- 25 
		5 => ("0000"&"1001"&"0010"&"0001"), -- MULT R3  R2
		6 => ("0000"&"1101"&"0011"&"0011"), -- LOAD R4 <- W
		7 => ("0000"&"1101"&"0001"&"0110"), -- LOAD R2 <- -4 
		8 => ("0000"&"1010"&"0011"&"0001"), -- DIV R4  R2
		9 => ("0000"&"0111"&"0000"&"0010"), -- SUM R1  R3
		10 => ("0000"&"1000"&"0000"&"0011"), -- RES R1  R4
		11 => ("0000"&"1111"&"0000"&"0000"), -- NOT OP
		
		-- ECUACION 2: (10x**2+30x-z/2)
		12 => ("0000"&"1101"&"0000"&"0000"), -- LOAD R1 <- X
		13 => ("0000"&"1101"&"0001"&"0000"), -- LOAD R2 <- X
		14 => ("0000"&"1001"&"0000"&"0001"), -- MULT R1  R2
		15 => ("0000"&"1101"&"0100"&"0111"), -- LOAD R5  10
		16 => ("0000"&"1001"&"0000"&"0100"), -- MUL R1  R5
		17 => ("0000"&"1101"&"0010"&"0000"), -- LOAD R3 <- X
		18 => ("0000"&"1101"&"0001"&"1000"), -- LOAD R2 <- 30
		19 => ("0000"&"1001"&"0010"&"0001"), -- MULT R3  R2
		20 => ("0000"&"1101"&"0011"&"0010"), -- LOAD R4 <- Z
		21 => ("0000"&"1101"&"0001"&"1001"), -- LOAD R2 <- -2
		22 => ("0000"&"1010"&"0011"&"0001"), -- DIV R4  R2
		23 => ("0000"&"0111"&"0000"&"0010"), -- SUM R1  R3
		24 => ("0000"&"1000"&"0000"&"0011"), -- RES R1  R4
		25 => ("0000"&"1111"&"0000"&"0000"), -- NOT OP
		
		-- ECUACION 3: (-x**3-7z+w/10)
		26 => ("0000"&"1101"&"0000"&"0000"), -- LOAD R1 <- X
		27 => ("0000"&"1101"&"0001"&"0000"), -- LOAD R2 <- X
		28 => ("0000"&"1001"&"0000"&"0001"), -- MULT R1  R2
		29 => ("0000"&"1101"&"0001"&"0000"), -- LOAD R2 <- X
		30 => ("0000"&"1001"&"0000"&"0001"), -- MULT R1  R2
		31 => ("0000"&"1101"&"0010"&"0010"), -- LOAD R3 <- z
		32 => ("0000"&"1101"&"0001"&"1010"), -- LOAD R2 <- -7
		33 => ("0000"&"1001"&"0010"&"0001"), -- MULT R3  R2
		34 => ("0000"&"1101"&"0011"&"0011"), -- LOAD R4 <- w
		35 => ("0000"&"1101"&"0001"&"0111"), -- LOAD R2 <- 10
		36 => ("0000"&"1010"&"0011"&"0001"), -- DIV R4  R2
		37 => ("0000"&"1000"&"0000"&"0010"), -- SUM R1  R3
		38 => ("0000"&"0111"&"0000"&"0011"), -- RES R1  R4
		39 => ("0000"&"1111"&"0000"&"0000") -- NOT OP
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
							IF (PC < 11) THEN
								PC <= PC + 1;
								pr_state <= state1;
							ELSE
								IF (reggy(0)(9) = '1') THEN
									salida <= sflag & "000000" & reggy(0)(8 DOWNTO 0);
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
							
						WHEN "01" => --Comienza la ecuacion 2
							IF (PC < 11) THEN
								PC <= 12;
							ELSE
								IF (PC < 25) THEN
									PC <= PC + 1;
									pr_state <= state1;
								ELSE
									IF (reggy(0)(9) = '1') THEN
										salida <= sflag & "000000" & reggy(0)(8 DOWNTO 0);
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
						WHEN "10" => --Comienza la ecuacion 3
							IF (PC < 25) THEN
								PC <= 26;
							ELSE
								IF (PC < 39) THEN
									PC <= PC + 1;
									pr_state <= state1;
								ELSE
									IF (reggy(0)(9) = '1') THEN
										salida <= sflag & "000000" & reggy(0)(8 DOWNTO 0);
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
					IF (MAR(11 DOWNTO 8) = "1101") THEN --En caso que la instruccion sea load
						REG_D <= values(to_integer(unsigned(MAR(3 DOWNTO 0))));
					
					ELSIF (MAR(15 DOWNTO 12) = "1110") THEN --En caso que la instruccion sea un salto
						--Aqui vamos a tener que hacer varias comparaciones
						
						IF(cmprs(to_integer(unsigned(MAR(11 DOWNTO 8)))) /= reggy(7)) THEN -- Primero se comprueba si hubo una comparacion primero (En este caso no se consideran las flags)
							PC_AUX <= to_integer(unsigned(MAR(7 DOWNTO 0))) - 1;
						
						ELSIF(cmprs(to_integer(unsigned(MAR(11 DOWNTO 8)))) = "0000000000000000") THEN -- Si no hay comparacion se hace un salto directo
							PC_AUX <= to_integer(unsigned(MAR(7 DOWNTO 0))) - 1;
						
						ELSE -- En cualquier otro caso no se hace nada
							PC_AUX <= PC;
						
						END IF;
					
					ELSE
						-- El resto de operaciones son controladas por la ALU
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
						
					ELSIF(MAR(15 DOWNTO 12) = "1110") THEN
						PC <= PC_AUX; -- El salto se hace indicando el numero de instruccion
					
					ELSIF(MAR(11 DOWNTO 8) = "1011") THEN
						reggy(7) <= MBR; -- Aqui se guarda en el ultimo registro el resultado de la comparacion
					
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