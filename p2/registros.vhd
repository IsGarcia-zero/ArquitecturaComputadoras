LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY registros IS
	PORT(
		address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		wrt, clk : IN STD_LOGIC;
		data_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		salida : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END ENTITY registros;

ARCHITECTURE bhr OF registros IS
	TYPE data IS ARRAY(0 TO 10) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL reg : data := (
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
	10 => "0000000000"
	);
BEGIN
	PROCESS(clk)
	BEGIN
		IF(RISING_EDGE(clk) AND wrt = '1') THEN
			reg(to_integer(unsigned(address))) <= data_in;
		END IF;
	END PROCESS;
	salida <= reg(to_integer(unsigned(address)));
END ARCHITECTURE;