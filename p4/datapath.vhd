LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY datapath IS
	PORT(
		inf : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		clk, rst, push, pop, en, modeRead : IN STD_LOGIC;
		sal_cpu : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		n_ins : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		sal_real : OUT STD_LOGIC; 
		z_flag, s_flag, ov_flag, c_flag, sm : OUT STD_LOGIC
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

	SIGNAL buff1: STD_LOGIC_VECTOR(7 DOWNTO 0):= "00001011";
	SIGNAL buff2: STD_LOGIC_VECTOR(7 DOWNTO 0);

	TYPE data IS ARRAY (11 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	TYPE cmp IS ARRAY (10 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	TYPE list IS ARRAY (51 DOWNTO 0) OF STD_LOGIC_VECTOR(11 DOWNTO 0);
	TYPE reg IS ARRAY(0 TO 7) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL reggy, reggu : reg;
	SIGNAL zflag, sflag, ovflag, cflag, zflag1, sflag1, ovflag1, cflag1 : STD_LOGIC;
	SIGNAL wrt, flag : STD_LOGIC:= '0';
	SIGNAL OP, dir : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL data_in : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	SIGNAL signo1, signo2 : STD_LOGIC :='0';
	-- Pila cosas
	SIGNAL i : INTEGER RANGE 0 TO 99 := 0;
	SIGNAL tot : INTEGER RANGE 0 TO 150 := 0;
	SIGNAL deb : INTEGER RANGE 0 TO 5 := 0;
	SIGNAL iB : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	TYPE data_pila IS ARRAY(99 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ram_pila : data_pila;
	SIGNAL enable : STD_LOGIC := '0';
	-- Mensaje cosas
	SIGNAL msg, msg_aux : STD_LOGIC_VECTOR(79 DOWNTO 0);
	SIGNAL msg_sal, RESU, cont_sal : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL cont_messages : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000001";
	SIGNAL val_flag : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL cont_msg, j : INTEGER RANGE 0 TO 100 := 0;
	-- Mensaje Constantes
	SIGNAL incrementador : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000110010";
	SIGNAL limite_final : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000001100100";
	SIGNAL cant_msgs : STD_LOGIC_VECTOR(15 DOWNTO 0):= "0000000000000001";
	-- Parte numerica
	SIGNAL modo_numerico : STD_LOGIC:= '0';
	
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
	
	COMPONENT ALU IS 
		PORT(
			A,B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			R : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			clk, rst : IN STD_LOGIC;
			z_flag, s_flag, ov_flag, c_flag : OUT STD_LOGIC
		);
	END COMPONENT ALU;
	
	COMPONENT texto IS
		PORT(
			address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			palabra : OUT STD_LOGIC_VECTOR(79 DOWNTO 0)
		);
	END COMPONENT;
	
BEGIN


	PROCESS(clk, rst, REG_A, REG_B, REG_C, REG_D, push, pop, enable, iB, inf) IS
	BEGIN
		IF (rst = '0') THEN
			pr_state <= state0;
			PC <= 0;
		ELSIF (RISING_EDGE(clk)) THEN
			IF (modeRead = '0') THEN
				-- Se asigna el valor del mensaje una sola vez
				IF (j = 0) THEN
					msg_aux <= msg;
					val_flag <= msg(79 DOWNTO 76);
					j <= j + 1;
				END IF;
				cont_msg <= cont_msg + 1;
				-- Se hace el recorrido
				IF (cont_msg = 100) THEN
					IF (modo_numerico = '0') THEN
						msg_aux <= msg_aux(75 DOWNTO 0) & msg_aux(79 DOWNTO 76);
						cont_msg <= 0;
						IF (msg_sal(3 DOWNTO 0) = val_flag) THEN
							cont_messages <= cont_messages + 1;
						END IF;
					ELSE
						cont_sal <= RESU;
					END IF;
				END IF;
				--Se asigna el valor total de salida
				msg_sal <= msg_aux(79 DOWNTO 64);
				
				-- Maquina de estados
				CASE pr_state IS
					WHEN state0 =>
						IF (modo_numerico = '0') THEN
							REG_A <= cant_msgs; 
							REG_B <= cont_messages;
						ELSE
							REG_A <= cont_sal; 
							REG_B <= limite_final;
							REG_X <= cont_sal; 
							REG_Y <= incrementador;
						END IF;
						OP <= "1011";
						pr_state <= state1;
					WHEN state1 =>
						IF (modo_numerico = '0') THEN
							IF (MBR(1) = '1') THEN
								modo_numerico <= '1';
								cont_messages <= "0000000000000001";
							END IF;
						ELSE 
							IF (MBR(2) = '1') THEN
								cont_sal <= "0000000000000000";
								sal_cpu <= cont_sal;
								j <= 0;
								modo_numerico <= '0';
							END IF;
						END IF;	
						pr_state <= state2;
					WHEN OTHERS =>
						pr_state <= state0;
				END CASE;
				
				
				
				IF (modo_numerico = '1') THEN -- salida del contador
					sm <= '1';
					sal_cpu <= cont_sal;
				ELSE -- Salida del mensaje
					sal_cpu <= msg_sal;
					sm <= '0';
				END IF;
			ELSE
				IF (en = '0') THEN -- Cuando se presiona modo ejecucion
					enable <= '1';
				END IF;
				IF (enable = '0') THEN -- Cuando aun no se activa el modo ejecucion, funciona como pila
					IF (deb = 0) THEN
						IF(push = '0') THEN
							ram_pila(i) <= inf;
							i <= i + 1;
							iB <= iB + 1;
							deb <= deb + 1;
						END IF;
						IF(pop = '0' AND i > 0) THEN
							ram_pila(i) <= "0000000000000000";
							i <= i - 1;
							iB <= iB - 1;
							deb <= deb + 1;
						END IF;
					END IF;
					-- Debounce
					IF (deb > 0) THEN
						tot <= tot + 1;
					END IF;
					IF (tot = 150) THEN
						tot <= 0;
						IF(deb = 2) THEN
							deb <= 0;
						ELSE
							deb <= deb + 1;
						END IF;
					END IF;
					n_ins <= iB;
				ELSE -- Ahora se vuelve modo ejecucion
				
					CASE pr_state IS
						WHEN state0 => -- FETCH
							PC <= PC + 1;
							MAR <= ram_pila(PC)(11 DOWNTO 0);
							pr_state <= state1;
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
							IF (reggy(1)(15) = '1') THEN
								sal_cpu <= '0' & reggy(1)(14 DOWNTO 0);
								z_flag <= zflag;
								s_flag <= '1';
								ov_flag <= ovflag;
								c_flag <= cflag;
							ELSE
								sal_cpu <= reggy(1);
								z_flag <= zflag;
								s_flag <= sflag;
								ov_flag <= ovflag;
								c_flag <= cflag;
							END IF;
							pr_state <= state3;
					END CASE;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	sal_real <= enable;
	alu1: ALU PORT MAP(REG_A, REG_B, OP, MBR, clk, rst, zflag, sflag, ovflag, cflag);
	alu2: ALU PORT MAP(REG_X, REG_Y, "0111", RESU, clk, rst, zflag1, sflag1, ovflag1, cflag1);
	
	message1: texto PORT MAP("0000", msg);
END ARCHITECTURE;