LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ecuaciones IS
	PORT (
		addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		ec : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		resultado : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		clk, rst : STD_LOGIC
		--  d1, d2, d3, d4 : OUT STD_LOGIC;
		--  a, b, c, d, e, f, g : OUT STD_LOGIC
	);
END ENTITY ecuaciones;

ARCHITECTURE bhr OF ecuaciones IS
	SIGNAL As, Bs, res, res_aux : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL data : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL bcd, bcd_f : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL MREG : STD_LOGIC_VECTOR(23 DOWNTO 0);
	SIGNAL addr1, addr2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	--SIGNAL addr : STD_LOGIC_VECTOR(3 DOWNTO 0):="0000"; 
	SIGNAL f1, f2, f3, f4, c_aux, rlj_aux, wrt : STD_LOGIC;
	TYPE registrosos IS ARRAY(15 DOWNTO 0) OF STD_LOGIC_VECTOR(9 DOWNTO 0);

	SIGNAL registro : registrosos := (
		0 => "0000000000",
		1 => "0000000000",
		2 => "0000000000",
		3 => "0000000000",
		4 => "0000000000",
		5 => "0000000000",
		6 => "0000000000",
		7 => "0000000000",
		8 => "0000000000",
		9 => "0000000000",
		10 => "0000000000",
		11 => "0000000000",
		12 => "0000000000",
		13 => "0000000000",
		14 => "0000000000",
		15 => "0000000000"
	);
	COMPONENT ALU IS
		PORT (
			A, B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			R : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			clk, rst : IN STD_LOGIC; -- No puse in XDDDD 
			z_flag, s_flag, ov_flag, c_flag : OUT STD_LOGIC
		);
	END COMPONENT ALU;

	COMPONENT valores IS
		PORT (
			address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			valor : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			clk, wrt : IN STD_LOGIC;
			datain : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
		);
	END COMPONENT;
	--COMPONENT display IS 
	--	PORT(
	--		en : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	--		clk: IN STD_LOGIC;
	--		d1, d2, d3, d4 : OUT STD_LOGIC;
	--		a, b, c, d, e, f, g : OUT STD_LOGIC
	--	);
	--END COMPONENT;
	--
	--COMPONENT convertidor IS
	--	PORT(
	--		en : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	--		clk : in STD_lOGIC;
	--		s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	--	);
	--END COMPONENT;
	--
	--COMPONENT frecuencia_5Hz is
	--	port(
	--		reloj : in std_logic;
	--		reset : in std_logic;
	--		sal,sal2 : out std_logic
	--	);
	--	
	--END COMPONENT frecuencia_5Hz;
BEGIN
	--	CONT : PROCESS(rlj_aux)
	--	BEGIN
	--		IF(rlj_aux'EVENT AND rlj_aux'LAST_VALUE = '0' AND rlj_aux = '1') THEN
	--			--addr <= "0000";
	--			
	--			bcd_f <= bcd;
	--		
	--			addr <= addr + 1;
	--		END IF;
	--	END PROCESS CONT;
	PROCESS (addr, As, Bs, res, registro, clk, ec)
	BEGIN
		IF (RISING_EDGE(clk)) THEN
			CASE ec IS
				WHEN "00" => -- Primera
					CASE addr IS
						WHEN "0000" =>
							addr1 <= "0000";
							addr2 <= "0100";
						WHEN "0001" =>
							MREG(23 DOWNTO 14) <= As;
							MREG(13 DOWNTO 4) <= Bs;
							MREG(3 DOWNTO 0) <= "1001";
							registro(0) <= res;
						WHEN "0010" =>
							addr1 <= "0001";
							addr2 <= "0101";
						WHEN "0011" =>
							MREG(23 DOWNTO 14) <= As;
							MREG(13 DOWNTO 4) <= Bs;
							MREG(3 DOWNTO 0) <= "1001";
							registro(1) <= res;
						WHEN "0100" =>
							addr1 <= "0011";
							addr2 <= "0110";
						WHEN "0101" =>
							MREG(23 DOWNTO 14) <= As;
							MREG(13 DOWNTO 4) <= Bs;
							MREG(3 DOWNTO 0) <= "1010";
							registro(2) <= res;
						WHEN "0110" =>
							MREG(23 DOWNTO 14) <= registro(1);
							MREG(13 DOWNTO 4) <= registro(2);
							MREG(3 DOWNTO 0) <= "0111";
							registro(3) <= res; -- 2
						WHEN "0111" =>
							registro(4) <= res; -- 36
						WHEN "1000" =>
							MREG(23 DOWNTO 14) <= registro(4);
							MREG(13 DOWNTO 4) <= registro(3);
							MREG(3 DOWNTO 0) <= "1000";
							registro(4) <= res; -- 100100
						WHEN OTHERS =>
							registro(15) <= res;
					END CASE;
				WHEN "01" =>
					CASE addr IS
						WHEN "0000" =>
							addr1 <= "0000"; -- X 
							addr2 <= "0000"; -- X
						WHEN "0001" =>
							MREG(23 DOWNTO 14) <= As;
							MREG(13 DOWNTO 4) <= Bs;
							MREG(3 DOWNTO 0) <= "1001";
							registro(0) <= res; -- 0
						WHEN "0010" =>
							addr1 <= "0000"; -- x
							addr2 <= "1000"; -- 30
						WHEN "0011" =>
							MREG(23 DOWNTO 14) <= As;
							MREG(13 DOWNTO 4) <= Bs;
							MREG(3 DOWNTO 0) <= "1001";
							registro(1) <= res; -- x x
						WHEN "0100" =>
							addr1 <= "0010"; -- z
							addr2 <= "1001"; -- 2
						WHEN "0101" =>
							MREG(23 DOWNTO 14) <= As;
							MREG(13 DOWNTO 4) <= Bs;
							MREG(3 DOWNTO 0) <= "1010";
							registro(2) <= res; -- 30x
						WHEN "0110" =>
							MREG(23 DOWNTO 14) <= registro(1); --5
							MREG(13 DOWNTO 4) <= "0000000101"; --x2
							MREG(3 DOWNTO 0) <= "1001";
							registro(3) <= res; -- z/2
						WHEN "0111" =>
							MREG(23 DOWNTO 14) <= registro(2); -- 30x
							MREG(13 DOWNTO 4) <= registro(3);-- 5x2
							MREG(3 DOWNTO 0) <= "1000";
							registro(4) <= res; -- 5x2
						WHEN "1000" =>
							MREG(23 DOWNTO 14) <= registro(2); --30x
							MREG(13 DOWNTO 4) <= registro(3); -- 5x2
							MREG(3 DOWNTO 0) <= "1000";
							registro(5) <= res; -- 30x-z/2
						WHEN "1001" =>
							MREG(23 DOWNTO 14) <= registro(4);
							MREG(13 DOWNTO 4) <= registro(5);
							MREG(3 DOWNTO 0) <= "0111";
							registro(6) <= res; -- 5x +30x-z/2
						WHEN OTHERS =>
							registro(15) <= res;
					END CASE;
				WHEN "10" =>
					CASE addr IS
						WHEN "0000" =>
							addr1 <= "0000"; -- X 
							addr2 <= "0000"; -- X
						WHEN "0001" =>
							MREG(23 DOWNTO 14) <= As;
							MREG(13 DOWNTO 4) <= Bs;
							MREG(3 DOWNTO 0) <= "1001";
							registro(0) <= res; -- 0
						WHEN "0010" =>
							addr1 <= "0010"; -- z
							addr2 <= "0111"; -- 5
						WHEN "0011" =>
							MREG(23 DOWNTO 14) <= As;
							MREG(13 DOWNTO 4) <= Bs;
							MREG(3 DOWNTO 0) <= "1001";
							registro(1) <= res; -- x x
						WHEN "0100" =>
							addr1 <= "0011"; -- w
							addr2 <= "1100"; -- 5
						WHEN "0101" =>
							MREG(23 DOWNTO 14) <= As;
							MREG(13 DOWNTO 4) <= Bs;
							MREG(3 DOWNTO 0) <= "1010";
							registro(2) <= res; -- 5z
						WHEN "0110" =>
							MREG(23 DOWNTO 14) <= registro(1); --x2
							MREG(13 DOWNTO 4) <= "0000000111"; --7
							MREG(3 DOWNTO 0) <= "1001";
							registro(3) <= res; -- w/5
						WHEN "0111" =>
							MREG(23 DOWNTO 14) <= registro(3); --w/5
							MREG(13 DOWNTO 4) <= registro(2); -- 5z
							MREG(3 DOWNTO 0) <= "1000";
							registro(4) <= res; -- 7x2
						WHEN "1000" =>
							MREG(23 DOWNTO 14) <= registro(2);
							MREG(13 DOWNTO 4) <= registro(3);
							MREG(3 DOWNTO 0) <= "1000";
							registro(5) <= res; -- w/5-5z
						WHEN "1001" =>
							MREG(23 DOWNTO 14) <= registro(5);
							MREG(13 DOWNTO 4) <= registro(4);
							MREG(3 DOWNTO 0) <= "1000";
							registro(6) <= res; -- w/5-5z-7x2
						WHEN OTHERS =>
							registro(15) <= res;
					END CASE;
				WHEN "11" =>
					CASE addr IS
						WHEN "0000" =>
							addr1 <= "1111";
							addr2 <= "1111";
						WHEN "0001" =>
							MREG(23 DOWNTO 14) <= As;
							MREG(13 DOWNTO 4) <= Bs;
							MREG(3 DOWNTO 0) <= "0000";
							registro(0) <= res; -- 0
						WHEN OTHERS =>
							registro(15) <= res;
					END CASE;
			END CASE;
		END IF;
		resultado <= res;
	END PROCESS;
	alu1 : ALU PORT MAP(MREG(23 DOWNTO 14), MREG(13 DOWNTO 4), MREG(3 DOWNTO 0), res, clk, rst, f1, f2, f3, f4);
	val1 : valores PORT MAP(addr1, As, clk, '0', data);
	val2 : valores PORT MAP(addr2, Bs, clk, '0', data);
	--conv : convertidor PORT MAP(res, rlj_aux, bcd);
	--disp : display PORT MAP(bcd_f, rlj_aux, d1,d2,d3,d4,a,b,c,d,e,f,g);
	--fec: frecuencia_5Hz PORT MAP(clk,rst, rlj_aux, c_aux);
	-- 
END ARCHITECTURE;