LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY mux IS
    PORT (
        a, s, l : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        sM : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
END ENTITY mux;
ARCHITECTURE muxArch OF mux IS
    SIGNAL aux : STD_LOGIC_VECTOR(9 DOWNTO 0);
BEGIN
    Multiplexacion : PROCESS (a, b, sM, salida)
    BEGIN
        IF sM = "00" THEN --Artimethic
            aux <= a;
        ELSIF sM = "01" THEN --Shifter
            aux <= s;
        ELSIF sM = "10" THEN --Logic
            aux <= l;
        END IF;
    END PROCESS Multiplexacion;
    salida <= aux;
END ARCHITECTURE muxArch;