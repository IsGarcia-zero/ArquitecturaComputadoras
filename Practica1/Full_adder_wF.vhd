LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Full_Adder_wF IS PORT (
    selector : IN STD_LOGIC;
    A, B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Carry, Overflow, Zero, Sum, Cout : OUT STD_LOGIC
);
END Full_Adder_wF;

ARCHITECTURE Adder_wF OF Full_Adder_wF IS

    SIGNAL C : STD_LOGIC_VECTOR (7 DOWNTO 0);
    SIGNAL B_Prime : STD_LOGIC_VECTOR (7 DOWNTO 0);
    SIGNAL S_Prime : STD_LOGIC_VECTOR (7 DOWNTO 0);

    COMPONENT Fadder IS PORT (
        A, B, Cin : IN STD_LOGIC;
        S, Cout : OUT STD_LOGIC
        );
    END COMPONENT;

BEGIN

    B_Prime(0) <= B(0) XOR selector;
    B_Prime(1) <= B(1) XOR selector;
    B_Prime(2) <= B(2) XOR selector;
    B_Prime(3) <= B(3) XOR selector;
    B_Prime(4) <= B(4) XOR selector;
    B_Prime(5) <= B(5) XOR selector;
    B_Prime(6) <= B(6) XOR selector;
    B_Prime(7) <= B(7) XOR selector;

    Sum1 : Fadder PORT MAP(A(0), B_Prime(0), selector, S_Prime(0), C(0));
    Sum2 : Fadder PORT MAP(A(1), B_Prime(1), C(0), S_Prime(1), C(1));
    Sum3 : Fadder PORT MAP(A(2), B_Prime(2), C(1), S_Prime(2), C(2));
    Sum4 : Fadder PORT MAP(A(3), B_Prime(3), C(2), S_Prime(3), C(3));
    Sum5 : Fadder PORT MAP(A(4), B_Prime(4), C(3), S_Prime(4), C(4));
    Sum6 : Fadder PORT MAP(A(5), B_Prime(5), C(4), S_Prime(5), C(5));
    Sum7 : Fadder PORT MAP(A(6), B_Prime(6), C(5), S_Prime(6), C(6));
    Sum8 : Fadder PORT MAP(A(7), B_Prime(7), C(6), S_Prime(7), C(7));

    S <= S_Prime;
    Carry <= selector XOR C(7);
    Overflow <= C(6) XOR C(7);
    Zero <= NOT(S_Prime(0) OR S_Prime(1) OR S_Prime(2) OR S_Prime(3) OR S_Prime(4) OR S_Prime(5) OR S_Prime(6) OR S_Prime(7));
    Sum <= S_Prime(7);
    Cout <= C(7);

END Adder_wF;