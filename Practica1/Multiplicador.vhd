LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
--Checa bien las entradas y las salidas de cada uno de los 
--Archivos
ENTITY Multiplicador IS PORT (
		ope : IN STD_LOGIC;
		VarA, VarB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		Salida : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		carryF, overflowF, zeroF, sumF : OUT STD_LOGIC
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
    C(0) <= VarB(0) AND VarA(0);
    C(1) <= VarB(1) AND VarA(0);
    C(2) <= VarB(2) AND VarA(0);
    C(3) <= VarB(3) AND VarA(0);
    C(4) <= VarB(4) AND VarA(0);

    --Segundo Sumador
    C(5) <= VarB(0) AND VarA(1);
    C(6) <= VarB(1) AND VarA(1);
    C(7) <= VarB(2) AND VarA(1);
    C(8) <= VarB(3) AND VarA(1);
    C(9) <= VarB(4) AND VarA(1);

    --Tercer Sumador
    C(10) <= VarB(0) AND VarA(2);
    C(11) <= VarB(1) AND VarA(2);
    C(12) <= VarB(2) AND VarA(2);
    C(13) <= VarB(3) AND VarA(2);
    C(14) <= VarB(4) AND VarA(2);

    --Cuarto Sumador
    C(15) <= VarB(0) AND VarA(3);
    C(16) <= VarB(1) AND VarA(3);
    C(17) <= VarB(2) AND VarA(3);
    C(18) <= VarB(3) AND VarA(3);
    C(19) <= VarB(4) AND VarA(3);

    --Quinto Sumador
    C(20) <= VarB(0) AND VarA(4);
    C(21) <= VarB(1) AND VarA(4);
    C(22) <= VarB(2) AND VarA(4);
    C(23) <= VarB(3) AND VarA(4);
    C(24) <= VarB(4) AND VarA(4);
    
	 Aux1 <= '0' & C(4 downto 1);							        
    Sum1: Full_Adder_Five Port Map(ope ,Aux1 , C(9 downto   5), S_Prime(4  downto  0), CF(0), OvF(0), ZF(0), SF(0));
		  
	 Aux2 <= CF(0) & S_Prime(4 downto  1);
	 Sum2: Full_Adder_Five Port Map(ope ,Aux2 , C(14 downto 10), S_Prime(9  downto  5), CF(1), OvF(1), ZF(1), SF(1));
		  
	 Aux3 <= CF(1) & S_Prime(9 downto  6);
	 Sum3: Full_Adder_Five Port Map(ope ,Aux3 , C(19 downto 15), S_Prime(14 downto 10), CF(2), OvF(2), ZF(2), SF(2));
		  
	 Aux4 <= CF(2) & S_Prime(14 downto 11);
	 Sum4: Full_Adder_Five Port Map(ope ,Aux4 , C(24 downto 20), S_Prime(20 downto 16), CF(3), OvF(3), ZF(3), SF(3));  
		 
    Salida(0) <= C(4);
    Salida(1) <= S_Prime(4);
    Salida(2) <= S_Prime(9);
    Salida(3) <= S_Prime(10);
    Salida(4) <= S_Prime(14);
    Salida(5) <= S_Prime(15);
    Salida(6) <= S_Prime(16);
    Salida(7) <= S_Prime(17);
    Salida(8) <= S_Prime(18);
    Salida(9) <= S_Prime(19);

    carryF <= CF(3);
    overflowF <= OvF(3);
    zeroF <= ZF(0) AND ZF(1) AND ZF(2) AND ZF(3);
    sumF <= S_Prime(19);

END Mult;