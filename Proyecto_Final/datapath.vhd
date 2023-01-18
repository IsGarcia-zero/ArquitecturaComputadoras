LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath IS
	PORT(
		mov : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		clk, rst : IN STD_LOGIC;
		cursor, player1, player2 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
		ins, salA, salB : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END ENTITY datapath;

ARCHITECTURE bhr OF datapath IS

	TYPE state is (state0,state1,state2,state3);
	SIGNAL pr_state : state;
	
	SIGNAL REG_A,REG_B,REG_C,REG_D, REG_X, REG_Y : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL PC, PC_AUX, OFFSET : INTEGER RANGE 0 TO 9999 := 0;
	
	SIGNAL MAR, IR : STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL ACC: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL MBR : STD_LOGIC_VECTOR(15 DOWNTO 0);

	TYPE data IS ARRAY (15 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	TYPE list IS ARRAY (15 DOWNTO 0) OF STD_LOGIC_VECTOR(11 DOWNTO 0);
	TYPE reg IS ARRAY(0 TO 7) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL reggy, reggu : reg;
	SIGNAL zflag, sflag, ovflag, cflag : STD_LOGIC;
	SIGNAL OP, dir : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	------------APARTADO NUEVO------------------
	SIGNAL cursor_aux : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL posPlayer1 : STD_LOGIC_VECTOR(8 DOWNTO 0):= "000000001";
	SIGNAL posPlayer2 : STD_LOGIC_VECTOR(8 DOWNTO 0):= "000000010";
	SIGNAL enable : STD_LOGIC := '0';
	
	SIGNAL values : data := (
	-- Datos precargados, editable
		0 => "0000000000000000", 
		1 => "0000000000000000", 
		2 => "0000000000000000", 
		3 => "0000000000000000", 
		4 => "0000000000000000", 
		5 => "0000000000000000", 
		6 => "0000000000000000", 
		7 => "0000000000000000", 
		8 => "0000000000000000", 
		-- Para uso de variables principales
		9 => "0000000000000000", -- CURSOR 
		10 =>"0000000000000000", -- POS PLAYER 1
		11 =>"0000000000000000", -- POS PLAYER 2
		-- Para registros y calculos
		12 =>"0000000000000000",
		13 =>"0000000000000000",
		14 =>"0000000000000000",
		15 =>"0000000000000000"
	);
	
	-- Saltos, hasta 65536 instrucciones
	CONSTANT jumps : data := (
		0 => "0000000000001111", -- 15
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
		11 => "0000000000000000", -- 
		12 =>"0000000000000000",
		13 =>"0000000000000000",
		14 =>"0000000000000000",
		15 =>"0000000000000000"
	);
	
	
	CONSTANT INSTRUCTIONS : list := (
		0 => "1100"&"0000"&"0001", 
		1 => "1100"&"0000"&"0010", 
		2 => "1100"&"0000"&"0011", 
		3 => "1101"&"0000"&"1001",-- LOAD CURSOR         
		4 => "1101"&"0001"&"1010",-- LOAD POS1           
		5 => "1101"&"0010"&"1011",-- LOAD POS2           
		6 => "0011"&"0001"&"0000",-- AND POS1 CURSOR     
		7 => "1011"&"0000"&"0001",-- COMPARE AND_RES POS1
		8 => "1110"&"0000"&"0010",-- JUMP 15 WHEN EQ     
		9 => "0011"&"0010"&"0000",-- AND POS2 CURSOR     
		10 =>"1011"&"0000"&"0010",-- COMPARE AND_RES POS2
		11 =>"1110"&"0000"&"0010",-- JUMP 15 WHEN EQ     
		12 =>"0000"&"0000"&"0000",
		13 =>"0000"&"0000"&"0000",
		14 =>"0000"&"0000"&"0000",
		15 =>"1111"&"0000"&"0000"
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
			IF(enable = '0') THEN
				IF(cursor_aux /= mov) THEN
					cursor_aux <= mov;
					enable <= '1';
				ELSE
					enable <= '0';
				END IF;
			ELSE

					CASE pr_state IS
						WHEN state0 => -- FETCH
							PC <= PC + 1;
							MAR <= INSTRUCTIONS(PC);
							pr_state <= state1;
						WHEN state1 => -- DECODE
							IF (MAR(11 DOWNTO 8) /= "1111") THEN
								IF (MAR(11 DOWNTO 8) = "1101") THEN --En caso que la instruccion sea load
									REG_D <= values(to_integer(unsigned(MAR(3 DOWNTO 0))));
								ELSIF (MAR(11 DOWNTO 8) = "1110") THEN -- JUMP, salta a la dir del primer registro
									IF (MAR(3 DOWNTO 0) = "0000") THEN -- Directo
										OFFSET <= to_integer(unsigned(jumps(to_integer(unsigned(MAR(7 DOWNTO 4))))));
									ELSIF (MAR(0) = '1') THEN -- Condicional
										IF (reggu(0)(0) = '1') THEN
											OFFSET <= to_integer(unsigned(jumps(to_integer(unsigned(MAR(7 DOWNTO 4))))));
										ELSE
											OFFSET <= PC;
										END IF;
									ELSIF (MAR(1) = '1') THEN
										IF (reggu(0)(1) = '1') THEN
											OFFSET <= to_integer(unsigned(jumps(to_integer(unsigned(MAR(7 DOWNTO 4))))));
										ELSE
											OFFSET <= PC;
										END IF;
									ELSIF (MAR(2) = '1') THEN
										IF (reggu(0)(2) = '1') THEN
											OFFSET <= to_integer(unsigned(jumps(to_integer(unsigned(MAR(7 DOWNTO 4))))));
										ELSE
											OFFSET <= PC;
										END IF;
									END IF;
									
								ELSIF (MAR(11 DOWNTO 8) = "1100") THEN
									IF (MAR(3 DOWNTO 0) = "0001") THEN
										values(9) <= "0000000" & cursor_aux;
									ELSIF (MAR(3 DOWNTO 0) = "0010") THEN
										values(10) <="0000000" & posPlayer1;
									ELSIF (MAR(3 DOWNTO 0) = "0011") THEN
										values(11) <="0000000" & posPlayer2;
									END IF;
									REG_D <= values(to_integer(unsigned(MAR(3 DOWNTO 0))));
								ELSE
									-- El resto de operaciones son controladas por la ALU
									OP <= MAR(11 DOWNTO 8);
									REG_A <= reggy(to_integer(unsigned(MAR(7 DOWNTO 4))));
									REG_B <= reggy(to_integer(unsigned(MAR(3 DOWNTO 0))));
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
									reggu(0) <= MBR; -- Aqui se guarda en el ultimo registro el resultado de la comparacion
								ELSIF(MAR(11 DOWNTO 8) = "1110") THEN
									PC <= OFFSET; --saltooo
									OFFSET <= 0;
								ELSIF(MAR(11 DOWNTO 8) = "1100") THEN
									values(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= REG_D;	
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
							pr_state <= state0;
							PC <= 0;
							enable <= '0';
					END CASE;
			END IF; -- ENABLE
		END IF;
	END PROCESS;
	
	cursor <= cursor_aux;
	salA <= values(9)(11 DOWNTO 0);
	salB <= reggy(2)(11 DOWNTO 0);
	ins <= MAR;
	alu1: ALU PORT MAP(REG_A, REG_B, OP, MBR, clk, rst, zflag, sflag, ovflag, cflag);
END ARCHITECTURE;