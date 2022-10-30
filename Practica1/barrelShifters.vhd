LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY barrelShifters IS
    PORT (
        a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        cntrl, clk, iniciar : IN STD_LOGIC;
        salShifters : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
END ENTITY barrelShifters;

ARCHITECTURE shifters OF barrelShifters IS
    SIGNAL aux : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL i : INTEGER RANGE 0 TO 9 := 0;
BEGIN
    --Las opciones del shifter
    Shifter : PROCESS (clk, cntrl)
    BEGIN
        IF iniciar = '0' THEN
            aux <= "0000000000";
        ELSIF (rising_edge(clk)) THEN
            IF (cntrl = '0') THEN
                --LSL
                aux(9 DOWNTO 1) <= aux(8 DOWNTO 0);
                aux(0) <= a(i);
                i <= i + 1;
            ELSE
                aux <= aux(9) & aux(9 DOWNTO 1); --ASR
                aux(9) <= a(i);
                i <= i + 1;
            END IF;
            salShifters <= aux;
        END IF;
    END PROCESS Shifter;

END ARCHITECTURE shifters;