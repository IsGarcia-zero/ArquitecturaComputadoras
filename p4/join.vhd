LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY join IS
	PORT(
		a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		enable, clk, rst : IN STD_LOGIC;
		ins : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		sal : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE bhr OF join IS
	SIGNAL sal_conv : STD_LOGIC_VECTOR(15 DOWNTO 0);

COMPONENT convertidor is
    generic(N: positive := 16);
    port(
        clk, reset: in std_logic;
        binary_in: in std_logic_vector(N-1 downto 0);
		  s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END COMPONENT convertidor;

BEGIN
	PROCESS (clk)
	BEGIN 
		IF (RISING_EDGE(clk)) THEN
			IF (enable = '1') THEN
				sal <= sal_conv;
			ELSE
				sal <= b & a(11 DOWNTO 0);
			END IF;
		END IF;
	END PROCESS;
	conv1: convertidor PORT MAP(clk, rst, ins, sal_conv);
END ARCHITECTURE;

