LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_wF is port (
    selector : in std_logic;
    A,B : in std_logic_vector(7 downto 0);
    S : out std_logic_vector(7 downto 0);
    Carry, Overflow, Zero, Sum, Cout: out std_logic
);
end Full_Adder_wF;

architecture Adder_wF OF Full_Adder_wF is 

    signal C : std_logic_vector (7 downto 0);
    signal B_Prime : std_logic_vector (7 downto 0);
	 signal S_Prime : std_logic_vector (7 downto 0);

    component Fadder is PORT( 
        A, B, Cin: in std_logic;
        S, Cout: out std_logic
		  );
    end component;

    begin

        B_Prime(0) <= B(0) XOR selector;
		  B_Prime(1) <= B(1) XOR selector;
		  B_Prime(2) <= B(2) XOR selector;
		  B_Prime(3) <= B(3) XOR selector;
		  B_Prime(4) <= B(4) XOR selector;
		  B_Prime(5) <= B(5) XOR selector;
		  B_Prime(6) <= B(6) XOR selector;
		  B_Prime(7) <= B(7) XOR selector;

        Sum1: Fadder Port Map(A(0), B_Prime(0), selector, S_Prime(0), C(0));
        Sum2: Fadder Port Map(A(1), B_Prime(1), C(0), S_Prime(1), C(1));
        Sum3: Fadder Port Map(A(2), B_Prime(2), C(1), S_Prime(2), C(2));
		  Sum4: Fadder Port Map(A(3), B_Prime(3), C(2), S_Prime(3), C(3));
        Sum5: Fadder Port Map(A(4), B_Prime(4), C(3), S_Prime(4), C(4));
		  Sum6: Fadder Port Map(A(5), B_Prime(5), C(4), S_Prime(5), C(5));
        Sum7: Fadder Port Map(A(6), B_Prime(6), C(5), S_Prime(6), C(6));
        Sum8: Fadder Port Map(A(7), B_Prime(7), C(6), S_Prime(7), C(7));

		  S <= S_Prime;
        Carry <= selector XOR C(7);
        Overflow <= C(6) XOR C(7);
        Zero <= NOT(S_Prime(0) OR S_Prime(1) OR S_Prime(2) OR S_Prime(3) OR S_Prime(4) OR S_Prime(5) OR S_Prime(6) OR S_Prime(7));
        Sum <= S_Prime(7);
		  Cout <= C(7);

end Adder_wF;
