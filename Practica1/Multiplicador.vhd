LIBRARY IEEE;
use STD_LOGIC_1164.ALL;

entity Multiplicador is port (
    A,B : in std_logic_vector(4 downto 0)
    S : out std_logic_vector(9 downto 0)
    CF, OvF, ZF, SF : out std_logic_vector (4 downto 0)
);
end Multiplicador;

architecture Mult of Multiplicador is 

    signal C : std_logic_vector (24 downto 0);
    signal S_prime : std_logic_vector (17 downto 0);

    component Full_Adder_wF is PORT( 
        selector : in std_logic
        A,B : in std_logic_vector(3 downto 0)
        S : out std_logic_vector(3 downto 0)
        Carry, Overflow, Zero, Sum : out std_logic
    );
    end component;

    begin

        C(0 ) = B(0) AND A(0);
        C(1 ) = B(1) AND A(0);
        C(2 ) = B(2) AND A(0);
        C(3 ) = B(3) AND A(0);
        C(4 ) = B(4) AND A(0);
        C(5 ) = B(0) AND A(1);
        C(6 ) = B(1) AND A(1);
        C(7 ) = B(2) AND A(1);
        C(8 ) = B(3) AND A(1);
        C(9 ) = B(4) AND A(1);
        C(10) = B(0) AND A(2);
        C(11) = B(1) AND A(2);
        C(12) = B(2) AND A(2);
        C(13) = B(3) AND A(2);
        C(14) = B(4) AND A(2);
        C(15) = B(0) AND A(3);
        C(16) = B(1) AND A(3);
        C(17) = B(2) AND A(3);
        C(18) = B(3) AND A(3);
        C(19) = B(4) AND A(3);
        C(20) = B(0) AND A(4);
        C(21) = B(1) AND A(4);
        C(22) = B(2) AND A(4);
        C(23) = B(3) AND A(4);
        C(24) = B(4) AND A(4);
                

        S(0) <= C(0);
        Sum1: Full_Adder_wF Port Map(0 ,C(1)      , C( 5), S_Prime( 0), CF(0), OvF(0), ZF(0), SF(0));
        Sum2: Full_Adder_wF Port Map(0 ,S_Prime(1), C( 9), S_Prime( 5), CF(1), OvF(1), ZF(1), SF(1));
        Sum3: Full_Adder_wF Port Map(0 ,S_Prime(5), C(17), S_Prime( 9), CF(2), OvF(2), ZF(2), SF(2));
        Sum4: Full_Adder_wF Port Map(0 ,S_Prime(9), C(21), S_Prime(13), CF(3), OvF(3), ZF(3), SF(3));
        
        
end Mult;
