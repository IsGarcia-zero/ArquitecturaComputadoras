LIBRARY IEEE;
use STD_LOGIC_1164.ALL;

entity Full_Adder_wF is port (
    selector : in std_logic
    A,B : in std_logic_vector(3 downto 0)
    S : out std_logic_vector(3 downto 0)
    Carry, Overflow, Zero, Sum : out std_logic
);
end Full_Adder_wF;

architecture Adder_wF is 

    signal C : std_logic_vector (2 downto 0);
    signal B_Prime : std_logic_vector (3 downto 0);

    component Fadder is PORT( 
        A, B, Cin: in std_logic
        S, Cout: out std_logic);
    end component;

    begin

        B_Prime = B XOR selector;

        Sum1: Fadder Port Map(A(0), B_Prime(0), selector, S(0), C(0));
        Sum2: Fadder Port Map(A(1), B_Prime(1), C(0), S(1), C(1));
        Sum3: Fadder Port Map(A(2), B_Prime(2), C(1), S(2), C(2));
        Sum4: Fadder Port Map(A(3), B_Prime(3), C(2), S(3), Cout);

        Carry = selector XOR C(2);
        Overflow = C(2) XOR Cout;
        Zero = S(0) NOR S(1) NOR S(2) NOR S(3);
        Sum = S(3);

end Adder_wF;
