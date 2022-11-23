LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY fullAdder IS
    PORT (
        A, B, Cin, Cin2 : IN STD_LOGIC;
        Cout, Suma, Cout2 : OUT STD_LOGIC
    );
END ENTITY fullAdder;

ARCHITECTURE fAdd OF fullAdder IS
BEGIN
    Suma <= Cin XOR A XOR B XOR Cin2;
    Cout <= (A AND B) OR (B AND Cin) OR (A AND Cin) OR (Cin AND Cin2) OR (A AND Cin2) OR (B AND Cin2);
    Cout2 <= A AND B AND Cin AND Cin2;
END ARCHITECTURE fAdd;