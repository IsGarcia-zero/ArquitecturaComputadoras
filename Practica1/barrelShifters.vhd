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
    SIGNAL aux : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL aux2 : STD_LOGIC_VECTOR(9 DOWNTO 0);
BEGIN
    aux <= a;
    --Las opciones del shifter
    Shifter : PROCESS (clk, iniciar, a, cntrl)
    BEGIN
			IF (rising_edge(clk)) THEN
            IF (cntrl = '0') THEN
                aux <= aux(8 DOWNTO 0) & '0';
                salShifters <= aux; --LSL
            ELSE
                aux <= aux(9) & aux(9 DOWNTO 1);
                salShifters <= aux;-- Arithmetic Shifter Right
            END IF;
        END IF;
    END PROCESS Shifter;
    
END ARCHITECTURE shifters;