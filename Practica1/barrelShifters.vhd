LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY barrelShifters IS
    PORT (
        a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        cntrl, clk, iniciar : IN STD_LOGIC;
        salidaLC : OUT STD_LOGIC;
        salShifters : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
END ENTITY barrelShifters;

ARCHITECTURE shifters OF barrelShifters IS

    SIGNAL contador : INTEGER RANGE 0 TO 49999999 := 0;
    SIGNAL aux : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000000000";
    SIGNAL salidMed : STD_LOGIC;

BEGIN
    --Mi divisor de frecuencias
    DivisorFrecuencia : PROCESS (clk, iniciar)
    BEGIN
        IF iniciar = '0' THEN
            salidMed <= '0';
            contador <= 0;
        ELSIF rising_edge(clk) THEN
            IF contador = 49999999 THEN
                contador <= 0;
                salidMed <= NOT salidMed;
            ELSE
                contador <= contador + 1;
            END IF;
        END IF;
    END PROCESS DivisorFrecuencia;

    salidaLC <= salidMed;
    --Las opciones del shifter
    Shifter : PROCESS (salidMed, iniciar, a, cntrl)
    BEGIN
        IF iniciar = '0' THEN
            aux <= "0000000000";
        ELSIF rising_edge(salidMed) THEN
            IF (cntrl = '0') THEN
                aux <= a(8 DOWNTO 0) & '0'; --LSL
            ELSE
                aux <= a(9) & a(9 DOWNTO 1);-- Arithmetic Shifter Right
            END IF;
        END IF;
    END PROCESS Shifter;

    salShifters <= aux;
END ARCHITECTURE shifters;