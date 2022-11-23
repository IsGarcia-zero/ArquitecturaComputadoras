LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY fullAdder IS
    PORT (
        A, B, Cin, Cin2, Cin3 : IN STD_LOGIC;
        Cout, Suma, Cout2 : OUT STD_LOGIC
    );
END ENTITY fullAdder;

ARCHITECTURE fAdd OF fullAdder IS
BEGIN
    Suma <= Cin XOR A XOR B XOR Cin2 XOR Cin3;
    Cout <= (A AND B) OR (B AND Cin) OR (A AND Cin) OR (Cin AND Cin2) OR (A AND Cin2) OR (B AND Cin2) OR (Cin AND Cin3) OR (A AND Cin3) OR (B AND Cin3);
    Cout2 <=  (B AND Cin AND Cin2 AND Cin3) OR (A AND Cin AND Cin2 AND Cin3) OR (A AND B AND Cin2 AND Cin3) OR (A AND B AND Cin AND Cin3) OR (A AND B AND Cin AND Cin2);
END ARCHITECTURE fAdd;