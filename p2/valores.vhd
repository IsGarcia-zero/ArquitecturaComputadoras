LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY valores IS
	PORT(
		address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		valor : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF valores IS 
	SUBTYPE op_codes IS STD_LOGIC_VECTOR(7 DOWNTO 0);
	TYPE list IS ARRAY (13 DOWNTO 0) OF op_codes;
	
	CONSTANT codigos : list := (
	0 => "00000000", -- A
	1 => "00000000", -- B
	2 => "00000000", -- C
	3 => "00000000", -- D
	4 => "00001101", -- 13
	5 => "00010111", -- 23
	6 => "00000100", -- 4
	7 => "00000101", -- 5
	8 => "00011110", -- 30
	9 => "00000010", -- 2
	10 => "00000111", -- 7
	11 => "00000101", -- 5
	12 => "00000101" -- 5
	);
BEGIN

	PROCESS(address)
	BEGIN
		CASE address IS
			WHEN "0000" => valor <= codigos(0);
			WHEN "0001" => valor <= codigos(1);
			WHEN "0010" => valor <= codigos(2);
			WHEN "0011" => valor <= codigos(3);
			WHEN "0100" => valor <= codigos(4);
			WHEN "0101" => valor <= codigos(5);
			WHEN "0110" => valor <= codigos(6);
			WHEN "0111" => valor <= codigos(7);
			WHEN "1000" => valor <= codigos(8);
			WHEN "1001" => valor <= codigos(9);
			WHEN "1010" => valor <= codigos(10);
			WHEN "1011" => valor <= codigos(11);
			WHEN "1100" => valor <= codigos(12);
			WHEN OTHERS => valor <= "11111111";
		END CASE;
	END PROCESS;
	
END ARCHITECTURE;