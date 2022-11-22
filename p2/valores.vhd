LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY valores IS
	PORT(
		address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		valor : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		clk, wrt : IN STD_LOGIC;
		datain: IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF valores IS 
	TYPE list IS ARRAY (15 DOWNTO 0) OF STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	SIGNAL codigos : list := (
	0 => "0000000010", -- A x
	1 => "0000000001", -- B y
	2 => "0000000001", -- C z
	3 => "0000010000", -- D w
	4 => "0000001101", -- 13
	5 => "0000010111", -- 23
	6 => "0000000100", -- 4
	7 => "0000000101", -- 5
	8 => "0000011110", -- 30
	9 => "0000000010", -- 2
	10 => "0000000111", -- 7
	11 => "0000000101", -- 5
	12 => "0000000101", -- 5
	13 => "0000000000", -- REG_A
	14 => "0000000000", -- REG_D
	15 => "0000000000" -- REG_C
	);
BEGIN
	PROCESS(address,clk, wrt)
	BEGIN
	IF(RISING_EDGE(clk) AND wrt = '1') THEN
		codigos(to_integer(unsigned(address))) <= datain;
	END IF;
	END PROCESS;
	
	valor<= codigos(to_integer(unsigned(address)));
	
END ARCHITECTURE;