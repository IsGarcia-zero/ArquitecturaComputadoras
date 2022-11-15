LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ten_bit_adder IS
	PORT(
		A,B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		Cin : IN STD_LOGIC;
		S : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		Cout : OUT STD_LOGIC
	);
END ENTITY ten_bit_adder;

ARCHITECTURE bhr OF ten_bit_adder IS
	SIGNAL Cout_aux : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL S_aux : STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	COMPONENT full_adder IS 
		PORT( 
			A, B, Cin: IN STD_LOGIC;
			S, Cout: OUT STD_LOGIC
		);
	END COMPONENT;
	
BEGIN
	
	fullAdder1 : full_adder PORT MAP(A(0), B(0), Cin, S_aux(0), Cout_aux(0));
	fullAdder2 : full_adder PORT MAP(A(1), B(1), Cout_aux(0), S_aux(1), Cout_aux(1));
	fullAdder3 : full_adder PORT MAP(A(2), B(2), Cout_aux(1), S_aux(2), Cout_aux(2));
	fullAdder4 : full_adder PORT MAP(A(3), B(3), Cout_aux(2), S_aux(3), Cout_aux(3));
	fullAdder5 : full_adder PORT MAP(A(4), B(4), Cout_aux(3), S_aux(4), Cout_aux(4));
	fullAdder6 : full_adder PORT MAP(A(5), B(5), Cout_aux(4), S_aux(5), Cout_aux(5));
	fullAdder7 : full_adder PORT MAP(A(6), B(6), Cout_aux(5), S_aux(6), Cout_aux(6));
	fullAdder8 : full_adder PORT MAP(A(7), B(7), Cout_aux(6), S_aux(7), Cout_aux(7));
	fullAdder9 : full_adder PORT MAP(A(8), B(8), Cout_aux(7), S_aux(8), Cout_aux(8));
	fullAdder10 : full_adder PORT MAP(A(9), B(9), Cout_aux(8), S_aux(9), Cout);
	
	PROCESS(S_aux)
	BEGIN
		S <= S_aux;
	END PROCESS;
END ARCHITECTURE;
	