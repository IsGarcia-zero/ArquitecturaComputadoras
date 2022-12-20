LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY letras IS
	PORT(
		addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		word : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF letras IS

	SUBTYPE textos IS STD_LOGIC_VECTOR(6 DOWNTO 0);
	TYPE textos_pantalla IS ARRAY (11 DOWNTO 0) OF textos;
	
	CONSTANT memory : textos_pantalla := (
		0 => "0010010",
		1 => "1000001",
		2 => "0101011",
		3 => "0001000",
		4 => "0101111",
		5 => "0000110",
		6 => "0000111",
		7 => "1000111",
		8 => "1001111",
		9 => "0100001",
		10 => "0100011",
		11 => "1000110"
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
			WHEN OTHERS => word <= "0111111";
		END CASE;
	END PROCESS;
END ARCHITECTURE;