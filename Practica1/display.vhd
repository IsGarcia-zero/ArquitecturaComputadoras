LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED;
USE IEEE.NUMERIC_STD;

ENTITY display IS 
	PORT(
		en : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		operacion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		clk : IN STD_LOGIC;
		d1,d2,d3,d4 : OUT STD_LOGIC;
		a,b,c,d,e,f,g : OUT STD_LOGIC;
		led : OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE bhr OF display IS
	SIGNAL sel : INTEGER RANGE 0 TO 3 := 0;
	SIGNAL var : INTEGER RANGE 0 TO 9999999 := 0;
	SIGNAL seg : INTEGER RANGE 0 TO 15 := 0;
	SIGNAL contador : INTEGER RANGE 0 TO 100 := 0;
	SIGNAL aux : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL selector : STD_lOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL msg, message : STD_lOGIC_VECTOR(19 DOWNTO 0);
	SIGNAL disp, letter : STD_lOGIC_VECTOR(6 DOWNTO 0) := "0000000";
	SIGNAL ledsito : STD_lOGIC := '0';
	SIGNAL letrita : STD_lOGIC_VECTOR(3 DOWNTO 0) := "0000";
	SIGNAL l1,l2,l3,l4 : STD_lOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL op : STD_LOGIC_VECTOR(3 DOWNTO 0):= operacion;
	SIGNAL op_real : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	COMPONENT letras IS
		PORT(
			addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			word : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT texto IS
		PORT(
			address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			palabra : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
		);
	END COMPONENT;
BEGIN
	
	desplegar: PROCESS(clk)
	BEGIN
		IF(RISING_EDGE(clk)) THEN
				-- Asignar 1 sola vez el valor de la letra
				IF var = 0 THEN
					message <= msg;
					op_real <= op;
					IF ledsito = '1' THEN
						ledsito <= '0';
					END IF;
				END IF;
				-- Comprobar si el mensaje cambio
				IF op /= op_real THEN
					var <= 0;
					seg <= 0;
				END IF;
				IF seg < 15 THEN
					-- Ventana deslizante operacion
					l1 <= message(7 DOWNTO 4);
					l2 <= message(11 DOWNTO 8);
					l3 <= message(15 DOWNTO 12);
					l4 <= message(19 DOWNTO 16);
					IF (contador = 100) THEN
						contador <= 0;
						message <= message(15 DOWNTO 0) & l4;
						var <= var + 1;
						seg <= seg + 1;
					END IF;
					IF sel = 3 THEN
						sel <= 0;
					END IF;
				ELSE
					-- Salida numerica y obtener la entrada de la UA
					ledsito <= '1';
					l4 <= en(15 DOWNTO 12);
					l3 <= en(11 DOWNTO 8);
					l2 <= en(7 DOWNTO 4);
					l1 <= en(3 DOWNTO 0);
				END IF;
				-- Colocar digito en el display correspondiente
				CASE sel IS
					WHEN 0 => selector <= "1000";aux <= l4;
					WHEN 1 => selector <= "0100";aux <= l3;
					WHEN 2 => selector <= "0010";aux <= l2;
					WHEN 3 => selector <= "0001";aux <= l1;
				END CASE;
				-- Aumentar contadores
				sel <= sel + 1;
				contador <= contador + 1;
		END IF;
		letrita <= aux;
		IF ledsito = '0' THEN
			disp <= letter;
		ELSE
			CASE letrita IS
				-- Binario a BCD
				WHEN "0000" => disp <= "1000000";
				WHEN "0001" => disp <= "1111001";
				WHEN "0010" => disp <= "0100100";
				WHEN "0011" => disp <= "0110000";
				WHEN "0100" => disp <= "0011001";
				WHEN "0101" => disp <= "0010010";
				WHEN "0110" => disp <= "0000010";
				WHEN "0111" => disp <= "1111000";
				WHEN "1000" => disp <= "0000000";
				WHEN "1001" => disp <= "0010000";
				WHEN "1111" => disp <= "1111111";
				WHEN OTHERS => disp <= "0111111";
			END CASE;
		END IF;
	END PROCESS desplegar;
	
	d4 <= selector(3);
	d3 <= selector(2);
	d2 <= selector(1);
	d1 <= selector(0);
	a <= disp(0);
	b <= disp(1);
	c <= disp(2);
	d <= disp(3);
	e <= disp(4);
	f <= disp(5);
	g <= disp(6);

	mensaje: texto PORT MAP(op, msg);
	letra: letras PORT MAP(letrita, letter);
END ARCHITECTURE;


