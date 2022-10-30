LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Fadder IS PORT (
    A, B, Cin : IN STD_LOGIC;
    S, Cout : OUT STD_LOGIC
);
END Fadder;

ARCHITECTURE FullA OF Fadder IS
BEGIN
    S <= Cin XOR (A XOR B);
    Cout <= (A AND B) OR (B AND Cin) OR (A AND Cin);
END FullA;