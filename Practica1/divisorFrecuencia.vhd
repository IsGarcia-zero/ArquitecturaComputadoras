library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity divisorFrecuencia is
    port (
        clk, iniciar: in STD_LOGIC;
        salidaLC : OUT STD_LOGIC
    );
end entity divisorFrecuencia;
architecture divFre of divisorFrecuencia is
    SIGNAL contador : INTEGER RANGE 0 TO 49999999 := 0;
    SIGNAL salidMed : std_logic;
begin
    
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
end architecture divFre;
--Mi divisor de frecuencias

