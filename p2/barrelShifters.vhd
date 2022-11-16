LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
ENTITY barrelShifters IS
    PORT (
        a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        cntrl, clk, iniciar : IN STD_LOGIC;
        salShifters : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
        salPrub : OUT STD_LOGIC
    );
END ENTITY barrelShifters;

ARCHITECTURE shifters OF barrelShifters IS
    SIGNAL aux : STD_LOGIC_VECTOR(9 DOWNTO 0);
    signal i: INTEGER RANGE 0 TO 9 := 0;
BEGIN
    --Las opciones del shifter
    Shifter : PROCESS (clk, cntrl, iniciar)
    BEGIN
        IF iniciar = '0' THEN
            aux <= "0000000000";
        ELSIF (rising_edge(clk)) THEN
            IF (cntrl = '0') THEN
                --LSL
                aux(9 downto 1) <= aux(8 DOWNTO 0);
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
    salPrub <= clk;
END ARCHITECTURE shifters;