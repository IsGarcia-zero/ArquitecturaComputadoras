LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY texto IS
	PORT(
		address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		palabra : OUT STD_LOGIC_VECTOR(79 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF texto IS

SUBTYPE textos IS STD_LOGIC_VECTOR(79 DOWNTO 0);
	TYPE textos_pantalla IS ARRAY (1 DOWNTO 0) OF textos;
	
	CONSTANT memory : textos_pantalla := (
	x"CA73F50BA22666DE5FFF",
	x"CA73F50BA22666DE5FFF"
--		0 => "00000001001000100011",--suma
--		1 => "01000101000001100011",--resta
--		--2 => "001000100001011101101000",--multi
--		2 => "00100010000101110110",--mult
--		3 => "00110010100111111111",--and
--		4 => "10100100111111111111",--or
--		5 => "00101010011011111111",--not
--		6 => "10111010111111111111",--c01
--		7 => "10110011110011111111",--cA2
--		8 => "01001010010011111111",--ror
--		9 => "01001010011111111111",--rol
--		10 => "01110000011111111111",--LSL
--		11 => "01110000010011111111"--LSr
		);

BEGIN
	PROCESS(address)
	BEGIN
		CASE address IS
			WHEN "0000" => palabra <= memory(0); --suma
			WHEN "0001" => palabra <= memory(1); --resta
--			WHEN "0010" => palabra <= memory(2); --multi
--			WHEN "0011" => palabra <= memory(3); --and
--			WHEN "0100" => palabra <= memory(4); --or
--			WHEN "0101" => palabra <= memory(5); --not
--			WHEN "0110" => palabra <= memory(7); --cA2
--			WHEN "0111" => palabra <= memory(10); --LSL
--			WHEN "1000" => palabra <= memory(11); --LSR
			WHEN OTHERS => palabra <= x"FFFFFFFFFFFFFFFFFFFF"; --suma
		END CASE;
	END PROCESS;
END ARCHITECTURE;