LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY letras IS
	PORT(
		addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		word : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF letras IS

	SUBTYPE textos IS STD_LOGIC_VECTOR(7 DOWNTO 0);
	TYPE textos_pantalla IS ARRAY (14 DOWNTO 0) OF textos;
	
	CONSTANT memory : textos_pantalla := (
		0 => "10010010", -- s
		1 => "11000001", -- u
		2 => "10101011", -- n
		3 => "10001000", -- A
		4 => "10101111", -- r
		5 => "10000110", -- E
		6 => "01111111", -- .
		7 => "11000111", -- L
		8 => "11001111", -- i
		9 => "11100001", -- d
		10 => "10100011", -- o
		11 => "11000110", -- c
		12 => "10001001", -- H
		13 => "10000011", -- b
		14 => "10010001" -- y
		);
BEGIN
	PROCESS(addr)
	BEGIN
		CASE addr IS
			WHEN "0000" => word <= memory(0);
			WHEN "0001" => word <= memory(1);
			WHEN "0010" => word <= memory(2);
			WHEN "0011" => word <= memory(3);
			WHEN "0100" => word <= memory(4);
			WHEN "0101" => word <= memory(5);
			WHEN "0110" => word <= memory(6);
			WHEN "0111" => word <= memory(7);
			WHEN "1000" => word <= memory(8);
			WHEN "1001" => word <= memory(9);
			WHEN "1010" => word <= memory(10);
			WHEN "1011" => word <= memory(11);
			WHEN "1100" => word <= memory(12);
			WHEN "1101" => word <= memory(13);
			WHEN "1110" => word <= memory(14);
			WHEN OTHERS => word <= "10111111";
		END CASE;
	END PROCESS;
END ARCHITECTURE;