library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Multiplicador is port (
    selector : in std_logic;
	 A,B : in std_logic_vector(4 downto 0);
    S : out std_logic_vector(9 downto 0);
	 Carry, Overflow, Zero, Sum : out std_logic
);
end Multiplicador;

architecture Mult of Multiplicador is 

    signal C : std_logic_vector (24 downto 0);
    signal S_prime : std_logic_vector (19 downto 0);
	 signal CF, OvF, ZF, SF : std_logic_vector (4 downto 0);

    component Full_Adder_Five is PORT( 
        selector : in std_logic;
        A,B : in std_logic_vector(4 downto 0);
        S : out std_logic_vector(4 downto 0);
        Carry, Overflow, Zero, Sum : out std_logic
    );
    end component;
    begin

		  --Primer Sumador
        C(0 ) <= B(0) AND A(0);
        C(1 ) <= B(1) AND A(0);
        C(2 ) <= B(2) AND A(0);
        C(3 ) <= B(3) AND A(0);
        C(4 ) <= B(4) AND A(0);
		  
		  --Segundo Sumador
        C(5 ) <= B(0) AND A(1);
        C(6 ) <= B(1) AND A(1);
        C(7 ) <= B(2) AND A(1);
        C(8 ) <= B(3) AND A(1);
        C(9 ) <= B(4) AND A(1);
        
		  --Tercer Sumador
		  C(10) <= B(0) AND A(2);
        C(11) <= B(1) AND A(2);
        C(12) <= B(2) AND A(2);
        C(13) <= B(3) AND A(2);
        C(14) <= B(4) AND A(2);
        
		  --Cuarto Sumador
		  C(15) <= B(0) AND A(3);
        C(16) <= B(1) AND A(3);
        C(17) <= B(2) AND A(3);
        C(18) <= B(3) AND A(3);
        C(19) <= B(4) AND A(3);
        
		  --Quinto Sumador
		  C(20) <= B(0) AND A(4);
        C(21) <= B(1) AND A(4);
        C(22) <= B(2) AND A(4);
        C(23) <= B(3) AND A(4);
        C(24) <= B(4) AND A(4);
										--       Selector          A(5)                         B(5)                 S(5)          CF     OvF     ZF     SF
        Sum1: Full_Adder_Five Port Map(selector ,C(3  downto  0) & '0'         , C(9  downto  5), S_Prime(4  downto  0), CF(0), OvF(0), ZF(0), SF(0));
		  Sum2: Full_Adder_Five Port Map(selector ,S_Prime(4  downto  1) & CF(0) , C(14 downto 10), S_Prime(9  downto  5), CF(1), OvF(1), ZF(1), SF(1));
		  Sum3: Full_Adder_Five Port Map(selector ,S_Prime(9  downto  6) & CF(1) , C(19 downto 15), S_Prime(14 downto 10), CF(2), OvF(2), ZF(2), SF(2));
		  Sum4: Full_Adder_Five Port Map(selector ,S_Prime(14 downto 11) & CF(2) , C(24 downto 20), S_Prime(19 downto 15), CF(3), OvF(3), ZF(3), SF(3));  
		 
		  S(0) <= C(4);
		  S(1) <= S_Prime(0);
		  S(2) <= S_Prime(5);
		  S(3) <= S_Prime(10);
		  S(4) <= S_Prime(14);
		  S(5) <= S_Prime(15);
		  S(6) <= S_Prime(16);
		  S(7) <= S_Prime(17);
		  S(8) <= S_Prime(18);
		  S(9) <= S_Prime(19);
		  
		  Carry  <= CF(3);
		  Overflow <= OvF(3);
		  Zero <= ZF(0) AND ZF(1) AND ZF(2) AND ZF(3);
		  Sum <= S_Prime(19);
        
end Mult;
