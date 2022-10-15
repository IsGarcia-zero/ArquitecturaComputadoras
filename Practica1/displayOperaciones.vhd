-- PROTOTIPO
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity displayOperaciones is
    port (
        cntrlSeg: in STD_LOGIC_VECTOR(0 TO 1);
        cntrlArt: in STD_LOGIC_VECTOR(0 to 1);
        cntrlShf: in STD_LOGIC;
        cntrlLog: in STD_LOGIC_VECTOR(0 to 1);
        d0, d1, d2, d3 : out std_logic_vector(0 to 6)
    );
end entity displayOperaciones;
architecture dOperaciones of displayOperaciones is
    signal ad0, ad1, ad2, ad3: std_logic_vector(0 to 6);
begin
    ProcDisplay: process(cntrlSeg, cntrlArt, cntrlShf, cntrlLog, ad1, ad2, ad0, ad3)
    begin
        if cntrlSeg = "00" then --Artimethic
            if cntrlArt = "00" then --Suma
                ad0 <= "0100100"; --S Anodo
                ad1 <= "1000001"; --U Anodo
                ad2 <= "1101010"; --n Andodo
                ad3 <= "1101010"; --n Andodo
            elsif cntrlArt = "01" then -- Resta
                ad0 <= "1111010"; --r Anodo
                ad1 <= "0110000"; --E Anodo
                ad2 <= "0100100"; --S Anodo
                ad3 <= "1110000"; --t Andodo
            elsif cntrlArt = "10" then --Mult
                ad0 <= "1101010"; --n Anodo
                ad1 <= "1101010"; --n Anodo
                ad2 <= "1000001"; --U Anodo
                ad3 <= "1110001"; --L Andodo
            end if;
        elsif cntrlSeg = "01" then --Shifter
            if cntrlShf = '0' then -- LSL
                ad0 <= "1110001"; --L Anodo
                ad1 <= "0100100"; --S Anodo
                ad2 <= "1110001"; --L Andodo
                ad3 <= "1111111"; --NULL Andodo
            else --ASR
                ad0 <= "0001000"; --A Anodo
                ad1 <= "0100100"; --S Anodo
                ad2 <= "1111010"; --r Andodo
                ad3 <= "1111111"; --NULL Andodo
            end if;
        elsif cntrlSeg = "10" then --Logic
            if cntrlLog = "00" then --NOT
                ad0 <= "1101010"; --n Anodo
                ad1 <= "1100010"; --o Anodo
                ad2 <= "1110000"; --t Andodo
                ad3 <= "1111111"; --null Andodo
            elsif cntrlLog = "01" then -- COMP2
                ad0 <= "0110001"; --C Anodo
                ad1 <= "1100010"; --o Anodo
                ad2 <= "0011000"; --P Anodo
                ad3 <= "0010010"; --2 Andodo
            elsif cntrlLog = "10" then --AND
                ad0 <= "0001000"; --A Anodo
                ad1 <= "1101010"; --n Anodo
                ad2 <= "1000010"; --d Anodo
                ad3 <= "1111111"; --null Andodo
            elsif cntrlLog = "11" then --OR
                ad0 <= "1111111"; --null Anodo
                ad1 <= "1100010"; --o Anodo
                ad2 <= "1111010"; --r Anodo
                ad3 <= "1111111"; --null Andodo
            end if;
        end if;
    end process ProcDisplay;
    d0 <= ad0;
    d1 <= ad1;
    d2 <= ad2;
    d3 <= ad3;
end architecture dOperaciones;