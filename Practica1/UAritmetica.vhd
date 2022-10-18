LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY UAritmetica IS
    PORT (
        selector : in std_logic;
        A,B : in std_logic_vector(7 downto 0);
        S : out std_logic_vector(9 downto 0);
        Carry, Overflow, Zero, Sum : out std_logic
    );
END ENTITY UAritmetica;

--- Suma(1 byte), Resta(1 byte) y Multiplicacion(5 bits)

ARCHITECTURE Aritmetica OF UAritmetica IS
    SIGNAL contador : INTEGER RANGE 0 TO 49999999 := 0;
    SIGNAL aux : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000000000";
    SIGNAL salidMed : STD_LOGIC;
BEGIN
END ARCHITECTURE Aritmetica;