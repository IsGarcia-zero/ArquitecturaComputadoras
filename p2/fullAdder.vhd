LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY fullAdder IS
    PORT (
        A, B, Cin : IN STD_LOGIC;
        Cout, Suma : OUT STD_LOGIC
    );
END ENTITY fullAdder;

ARCHITECTURE fAdd OF fullAdder IS
BEGIN
    Suma <= Cin XOR A XOR B;
    Cout <= (A AND B) OR (B AND Cin) OR (A AND Cin);
END ARCHITECTURE fAdd;