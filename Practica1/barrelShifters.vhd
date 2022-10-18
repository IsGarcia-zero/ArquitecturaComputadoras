LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY barrelShifters IS
    PORT (
        a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        cntrl, clk, iniciar : IN STD_LOGIC;
        salShifters : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
END ENTITY barrelShifters;

ARCHITECTURE shifters OF barrelShifters IS

    
    SIGNAL aux : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000000000";

BEGIN

    --Las opciones del shifter
    Shifter : PROCESS (clk, iniciar, a, cntrl)
    BEGIN
        IF iniciar = '0' THEN
            aux <= "0000000000";
        ELSIF rising_edge(clk) THEN
            IF (cntrl = '0') THEN
                aux <= a(8 DOWNTO 0) & '0'; --LSL
            ELSE
                aux <= a(9) & a(9 DOWNTO 1);-- Arithmetic Shifter Right
            END IF;
        END IF;
    END PROCESS Shifter;

    salShifters <= aux;
END ARCHITECTURE shifters;