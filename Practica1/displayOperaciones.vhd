-- PROTOTIPO
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY displayOperaciones IS
    PORT (
        cntrlSeg : IN STD_LOGIC_VECTOR(0 TO 1);
        cntrlArt : IN STD_LOGIC_VECTOR(0 TO 1);
        cntrlShf : IN STD_LOGIC;
        cntrlLog : IN STD_LOGIC_VECTOR(0 TO 1);
        d0, d1, d2, d3 : OUT STD_LOGIC_VECTOR(0 TO 6)
    );
END ENTITY displayOperaciones;
ARCHITECTURE dOperaciones OF displayOperaciones IS
    SIGNAL ad0, ad1, ad2, ad3 : STD_LOGIC_VECTOR(0 TO 6);
BEGIN
    ProcDisplay : PROCESS (cntrlSeg, cntrlArt, cntrlShf, cntrlLog, ad1, ad2, ad0, ad3)
    BEGIN
        IF cntrlSeg = "00" THEN --Artimethic
            IF cntrlArt = "00" THEN --Suma
                ad0 <= "0100100"; --S Anodo
                ad1 <= "1000001"; --U Anodo
                ad2 <= "1101010"; --n Andodo
                ad3 <= "1101010"; --n Andodo
            ELSIF cntrlArt = "01" THEN -- Resta
                ad0 <= "1111010"; --r Anodo
                ad1 <= "0110000"; --E Anodo
                ad2 <= "0100100"; --S Anodo
                ad3 <= "1110000"; --t Andodo
            ELSIF cntrlArt = "10" THEN --Mult
                ad0 <= "1101010"; --n Anodo
                ad1 <= "1101010"; --n Anodo
                ad2 <= "1000001"; --U Anodo
                ad3 <= "1110001"; --L Andodo
            END IF;
        ELSIF cntrlSeg = "01" THEN --Shifter
            IF cntrlShf = '0' THEN -- LSL
                ad0 <= "1110001"; --L Anodo
                ad1 <= "0100100"; --S Anodo
                ad2 <= "1110001"; --L Andodo
                ad3 <= "1111111"; --NULL Andodo
            ELSE --ASR
                ad0 <= "0001000"; --A Anodo
                ad1 <= "0100100"; --S Anodo
                ad2 <= "1111010"; --r Andodo
                ad3 <= "1111111"; --NULL Andodo
            END IF;
        ELSIF cntrlSeg = "10" THEN --Logic
            IF cntrlLog = "00" THEN --NOT
                ad0 <= "1101010"; --n Anodo
                ad1 <= "1100010"; --o Anodo
                ad2 <= "1110000"; --t Andodo
                ad3 <= "1111111"; --null Andodo
            ELSIF cntrlLog = "01" THEN -- COMP2
                ad0 <= "0110001"; --C Anodo
                ad1 <= "1100010"; --o Anodo
                ad2 <= "0011000"; --P Anodo
                ad3 <= "0010010"; --2 Andodo
            ELSIF cntrlLog = "10" THEN --AND
                ad0 <= "0001000"; --A Anodo
                ad1 <= "1101010"; --n Anodo
                ad2 <= "1000010"; --d Anodo
                ad3 <= "1111111"; --null Andodo
            ELSIF cntrlLog = "11" THEN --OR
                ad0 <= "1111111"; --null Anodo
                ad1 <= "1100010"; --o Anodo
                ad2 <= "1111010"; --r Anodo
                ad3 <= "1111111"; --null Andodo
            END IF;
        END IF;
    END PROCESS ProcDisplay;
    d0 <= ad0;
    d1 <= ad1;
    d2 <= ad2;
    d3 <= ad3;
END ARCHITECTURE dOperaciones;