LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY registros IS
	PORT(
		address : IN STD_lOGIC_VECTOR(3 DOWNTO 0);
		res: OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		clk, wrt : IN STD_LOGIC;
		data_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF registros IS

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
BEGIN
	PROCESS(address, clk, wrt)
	BEGIN
		IF(RISING_EDGE(clk) AND wrt = '1') THEN
			registro(to_integer(unsigned(address))) <= data_in;
		END IF;
	END PROCESS;
	res <= registro(to_integer(unsigned(address)));

END ARCHITECTURE;