LIBRARY IEEE;
USE IEEE.TD_LOGIC_1164.ALL;

ENTITY OP_SELEC IS
	PORT(
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		sal : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF OP_SELEC IS

BEGIN
	PROCESS(s)
	BEGIN
	CASE s IS
		WHEN "00" => sal <= "0000000000";
		WHEN "01" => sal <= "0000000000";
		WHEN "10" => sal <= "0000000000";
		WHEN "11" => sal <= "0000000000";
	END CASE;
END ARCHITECTURE;
	