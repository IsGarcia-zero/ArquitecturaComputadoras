LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
--Checa bien las entradas y las salidas de cada uno de los 
--Archivos
ENTITY Multiplicador IS PORT (
    selector : IN STD_LOGIC;
	 A, B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    S : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    Carry, Overflow, Zero, Sum : OUT STD_LOGIC
);
END Multiplicador;

ARCHITECTURE Mult OF Multiplicador IS

    SIGNAL C : STD_LOGIC_VECTOR (24 DOWNTO 0);
    SIGNAL S_prime : STD_LOGIC_VECTOR (19 DOWNTO 0);
    SIGNAL CF, OvF, ZF, SF : STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL Aux1, Aux2, Aux3, Aux4 : std_logic_vector (4 downto 0);

    COMPONENT Full_Adder_Five IS PORT (
        selector : IN STD_LOGIC;
        A, B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        S : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        Carry, Overflow, Zero, Sum : OUT STD_LOGIC
        );
    END COMPONENT;
BEGIN

    --Primer Sumador
    C(0) <= B(0) AND A(0);
    C(1) <= B(1) AND A(0);
    C(2) <= B(2) AND A(0);
    C(3) <= B(3) AND A(0);
    C(4) <= B(4) AND A(0);

    --Segundo Sumador
    C(5) <= B(0) AND A(1);
    C(6) <= B(1) AND A(1);
    C(7) <= B(2) AND A(1);
    C(8) <= B(3) AND A(1);
    C(9) <= B(4) AND A(1);

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
    
	 Aux1 <= '0' & C(4 downto 1);							        
    Sum1: Full_Adder_Five Port Map(selector ,Aux1 , C(9 downto   5), S_Prime(4  downto  0), CF(0), OvF(0), ZF(0), SF(0));
		  
	 Aux2 <= CF(0) & S_Prime(4 downto  1);
	 Sum2: Full_Adder_Five Port Map(selector ,Aux2 , C(14 downto 10), S_Prime(9  downto  5), CF(1), OvF(1), ZF(1), SF(1));
		  
	 Aux3 <= CF(1) & S_Prime(9 downto  6);
	 Sum3: Full_Adder_Five Port Map(selector ,Aux3 , C(19 downto 15), S_Prime(14 downto 10), CF(2), OvF(2), ZF(2), SF(2));
		  
	 Aux4 <= CF(2) & S_Prime(14 downto 11);
	 Sum4: Full_Adder_Five Port Map(selector ,Aux4 , C(24 downto 20), S_Prime(20 downto 16), CF(3), OvF(3), ZF(3), SF(3));  
		 
    S(0) <= C(4);
    S(1) <= S_Prime(4);
    S(2) <= S_Prime(9);
    S(3) <= S_Prime(10);
    S(4) <= S_Prime(14);
    S(5) <= S_Prime(15);
    S(6) <= S_Prime(16);
    S(7) <= S_Prime(17);
    S(8) <= S_Prime(18);
    S(9) <= S_Prime(19);

    Carry <= CF(3);
    Overflow <= OvF(3);
    Zero <= ZF(0) AND ZF(1) AND ZF(2) AND ZF(3);
    Sum <= S_Prime(19);

END Mult;