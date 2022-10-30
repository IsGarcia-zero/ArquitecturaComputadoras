LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Full_Adder_wF IS PORT (
		operation : IN STD_LOGIC;
		Var1, Var2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Res : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		CarryF, OverflowF, ZeroF, SumF, CoutF : OUT STD_LOGIC
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

    B_Prime(0) <= Var2(0) XOR operation;
    B_Prime(1) <= Var2(1) XOR operation;
    B_Prime(2) <= Var2(2) XOR operation;
    B_Prime(3) <= Var2(3) XOR operation;
    B_Prime(4) <= Var2(4) XOR operation;
    B_Prime(5) <= Var2(5) XOR operation;
    B_Prime(6) <= Var2(6) XOR operation;
    B_Prime(7) <= Var2(7) XOR operation;
    
	 --Que krajos hace S_Prime
    Sum1 : Fadder PORT MAP(Var1(0), B_Prime(0), operation, S_Prime(0), C(0));
    Sum2 : Fadder PORT MAP(Var1(1), B_Prime(1), C(0), S_Prime(1), C(1));
    Sum3 : Fadder PORT MAP(Var1(2), B_Prime(2), C(1), S_Prime(2), C(2));
    Sum4 : Fadder PORT MAP(Var1(3), B_Prime(3), C(2), S_Prime(3), C(3));
    Sum5 : Fadder PORT MAP(Var1(4), B_Prime(4), C(3), S_Prime(4), C(4));
    Sum6 : Fadder PORT MAP(Var1(5), B_Prime(5), C(4), S_Prime(5), C(5));
    Sum7 : Fadder PORT MAP(Var1(6), B_Prime(6), C(5), S_Prime(6), C(6));
    Sum8 : Fadder PORT MAP(Var1(7), B_Prime(7), C(6), S_Prime(7), C(7));

    Res <= S_Prime;
    CarryF <= operation XOR C(7);
    OverflowF <= C(6) XOR C(7);
    ZeroF <= NOT(S_Prime(0) OR S_Prime(1) OR S_Prime(2) OR S_Prime(3) OR S_Prime(4) OR S_Prime(5) OR S_Prime(6) OR S_Prime(7));
    SumF <= S_Prime(7);
    CoutF <= C(7);

END Adder_wF;