LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;
ENTITY barrelShifters IS
    PORT (
        a, b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        cntrl, clk, iniciar : IN STD_LOGIC;
        salShifters : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        salPrub : OUT STD_LOGIC
    );
END ENTITY barrelShifters;

ARCHITECTURE shifters OF barrelShifters IS
    SIGNAL aux : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL aux2 : INTEGER;
    --signal i: INTEGER RANGE 0 TO 3 := 0;
    aux2 <= TO_INTEGER(unsigned(b));
BEGIN
    --Las opciones del shifter
    Shifter : PROCESS (clk, cntrl, iniciar)
    -- Rotacional a la izquierda que cambia aux2 veces
    variable auxvar: STD_LOGIC_VECTOR(15 DOWNTO 0);
    variable auxa: STD_LOGIC_VECTOR(15 DOWNTO 0);
    BEGIN
        auxa := a;
        IF iniciar = '0' THEN
            aux <= "0000000000000000";
        ELSIF (rising_edge(clk)) THEN
            IF (cntrl = '0') THEN
                -- Rotacional a la izquierda
                for i in 0 to aux2 loop
                    auxa := auxa(14 DOWNTO 0) & auxa(15);
                end loop;
                --aux <= a(14 DOWNTO 0) & a(15);
                --salShifters <= aux(2 DOWNTO 0);
            ELSE
                for i in 0 to aux2 loop
                    auxa := auxa(15) & auxa(15 DOWNTO 1);
                end loop;
                --aux <= a(15) & a(15 DOWNTO 1); --ASR
            END IF;
            salShifters <= auxa;
        END IF;
    END PROCESS Shifter;
    salPrub <= clk;
END ARCHITECTURE shifters;