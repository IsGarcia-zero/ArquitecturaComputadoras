LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath IS
	PORT(
		clk, rst, put, up, down, izq, der : IN STD_LOGIC;
		cursor, player1, player2 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
		putDebounced : OUT STD_LOGIC
	);
END ENTITY datapath;

ARCHITECTURE bhr OF datapath IS
	SIGNAL mov : STD_LOGIC_VECTOR(8 DOWNTO 0) := "100000000";
	
	
	TYPE state is (state0,state1,state2,state3);
	SIGNAL pr_state : state;
	
	SIGNAL REG_A,REG_B,REG_C,REG_D, REG_X, REG_Y : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL PC, PC_AUX, OFFSET : INTEGER RANGE 0 TO 9999 := 0;
	
	SIGNAL MAR, IR : STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL ACC: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL MBR : STD_LOGIC_VECTOR(15 DOWNTO 0);

	TYPE data IS ARRAY (9 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	TYPE list IS ARRAY (16 DOWNTO 0) OF STD_LOGIC_VECTOR(11 DOWNTO 0);
	TYPE reg IS ARRAY(0 TO 7) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL reggy, reggu : reg;
	SIGNAL zflag, sflag, ovflag, cflag : STD_LOGIC;
	SIGNAL OP, dir : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	------------APARTADO NUEVO------------------
	TYPE cat_data IS ARRAY (3 DOWNTO 0) OF STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL cat : cat_data;
	SIGNAL cursor_aux, aux : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL posPlayer1 : STD_LOGIC_VECTOR(8 DOWNTO 0):= "000000001";
	SIGNAL posPlayer2 : STD_LOGIC_VECTOR(8 DOWNTO 0):= "000000010";
	SIGNAL enable, turno : STD_LOGIC := '0';
	SIGNAL pushed : STD_LOGIC_vector(3 DOWNTO 0) := "0000";
	SIGNAL i : INTEGER RANGE 0 TO 5 := 0;
	SIGNAL upD, downD, izqD, derD, putD : STD_LOGIC;
	
	SIGNAL values : data := (
	   0 => "0000000000000000", -- 
		1 => "0000000000000000", -- 
		2 => "0000000000000000", -- 
		3 => "0000000000000000", -- 
		4 => "0000000000000000", -- 
		5 => "0000000000000000", -- 
		6 => "0000000000000000", -- 
		7 => "0000000000000000", -- 
		8 => "0000000000000000",
		9 => "0000000000000000"
	);
	
	-- Saltos, hasta 65536 instrucciones
	CONSTANT jumps : data := (
		0 => "0000000000001011", -- 11
		1 => "0000000000000000", -- 0
		2 => "0000000000000000", -- 
		3 => "0000000000000000", -- 
		4 => "0000000000000000", -- 
		5 => "0000000000000000", -- 
		6 => "0000000000000000", -- 
		7 => "0000000000000000", -- 
		8 => "0000000000000000",
		9 => "0000000000000000"
	);
	
	
	CONSTANT INSTRUCTIONS : list := (
		0 => "1100"&"0000"&"0000", -- LOAD CURSOR
		1 => "1100"&"0001"&"0001", -- LOAD POS1
		2 => "0011"&"0001"&"0000", -- AND POS1 CURSOR
		3 => "1011"&"0000"&"0001", -- COMPARE AND_RES
		4 => "1110"&"0000"&"0010", -- JUMP 11 WHEN EQ
		5 => "1100"&"0000"&"0000", -- LOAD CURSOR
		6 => "1100"&"0001"&"0010", -- LOAD POS2
		7 => "0011"&"0001"&"0000", -- AND POS2 CURSOR
		8 => "1011"&"0000"&"0001", -- COMPARE CURSOR POS2
		9 => "1110"&"0000"&"0010", -- IF EQ CURSOR, JUMP
		10 =>"1111"&"0000"&"0000", -- Nada, se queda ahi
		11 =>"1100"&"0011"&"0000", -- LOAD CURSOR
		12 =>"0110"&"0011"&"0000", -- cORRIMIENTO
		13 =>"1100"&"0000"&"0011", -- ACTUALIZA CURSOR
		14 =>"1110"&"0001"&"0000", -- SALTA A 0
		15 =>"1111"&"0000"&"0000",
		16 =>"1111"&"0000"&"0000"
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
	
	COMPONENT debounce_dir IS
		PORT(
			a,b,c,d,e : IN STD_LOGIC;
			clk : IN STD_LOGIC;
			s1,s2,s3,s4,s5 : OUT STD_LOGIC
		);
	END COMPONENT;
	
	PROCEDURE movimiento (
		SIGNAL entrada : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		SIGNAL u, d, l,r : IN STD_LOGIC;
		SIGNAL sal : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	) IS
	BEGIN
		aux <= entrada;
		IF (l = '1') THEN
			aux <= aux(7 DOWNTO 0) & aux(8);
		ELSIF (r = '1') THEN
			aux <= aux(0) & aux(8 DOWNTO 1);
		ELSIF (u = '1') THEN
			aux <= aux(5 DOWNTO 0) & aux(8 DOWNTO 6);
		ELSIF (d = '1') THEN
			aux <= aux(2 DOWNTO 0) & aux(8 DOWNTO 3);
		END IF;
		sal <= aux;
	END movimiento;
	
BEGIN
	PROCESS(clk, rst, REG_A, REG_B, REG_C, REG_D) IS
	BEGIN
		IF (rst = '0') THEN
			pr_state <= state0;
			PC <= 0;
		ELSIF (RISING_EDGE(clk)) THEN
			IF(enable = '0') THEN
				IF (upD = '1' OR downD = '1' OR izqD = '1' OR derD = '1') THEN
					movimiento(mov, izqD, derD, upD, downD, mov);
					cat(0) <= mov;
					cat(1) <= posPlayer1;
					cat(2) <= posPlayer2;
					enable <= '1';
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
							CASE MAR(3 DOWNTO 0) IS
								WHEN "0000" => REG_D <= "0000000"&cat(0);
								WHEN "0001" => REG_D <= "0000000"&cat(1);
								WHEN "0010" => REG_D <= "0000000"&cat(2);
								WHEN "0011" => 
									REG_D <= reggy(3);
								WHEN "1111" => REG_D <= "0000000"&cat(2);
								WHEN OTHERS => REG_D <= "1111111111111111";
							END CASE;
						ELSIF (MAR(11 DOWNTO 8) = "0110") THEN
							movimiento(mov, pushed(0), pushed(1), pushed(2), pushed(3), mov);
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
							IF(MAR(3 DOWNTO 0) = "0011") THEN
								cat(0) <= REG_D(8 DOWNTO 0);
							ELSE
								reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= REG_D;	
							END IF;
						ELSIF(MAR(11 DOWNTO 8) = "0110") THEN
							reggy(to_integer(unsigned(MAR(7 DOWNTO 4)))) <= "0000000"&mov;
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
			i <= i + 1;
			IF (i = 5) THEN
				i <= 5;
			END IF;
		END IF;
	END PROCESS;
	
	--cursor <= mov;
	player1 <= posPlayer1;
	player2 <= posPlayer2;
	cursor <= cat(0);
	putDebounced <= putD;
--	salA <= reggy(0)(11 DOWNTO 0);
--	salB <= reggy(1)(11 DOWNTO 0);
	--ins <= MAR;
	alu1: ALU PORT MAP(REG_A, REG_B, OP, MBR, clk, rst, zflag, sflag, ovflag, cflag);
	debouncer1: debounce_dir PORT MAP(up, down, izq, der, put, clk, upD, downD, izqD, derD, putD);
END ARCHITECTURE;