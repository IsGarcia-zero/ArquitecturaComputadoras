LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Fadder IS PORT (
    A, B, Cin : IN STD_LOGIC;
    S, Cout : OUT STD_LOGIC
);
END Fadder;
--El nombre del archivo .vhdl tiene q ser el mismo que de la entidad
--Corregi, las operaciones logicas que hacen cada uno
ARCHITECTURE FullA OF Fadder IS
BEGIN
    S <= Cin XOR (A XOR B);
    Cout <= (A AND B) OR (B AND Cin) OR (A AND Cin);
END FullA;