LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH;

ENTITY multiplicador IS
	PORT(
		A,B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);

END ENTITY;

ARCHITECTURE bhr OF multiplicador IS

	SIGNAL suma_aux1,suma_aux2,suma_aux3,suma_aux4 : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL Cout_aux : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL and_aux1,and_aux2,and_aux3,and_aux4,and_aux5 : STD_LOGIC_VECTOR(4 DOWNTO 0);

	COMPONENT ten_bit_adder IS
		PORT(
			A,B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			Cin : IN STD_LOGIC;
			S : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			Cout : OUT STD_LOGIC
		);
	END COMPONENT ten_bit_adder;

BEGIN
	and_aux1 <= (A(0) AND B(0), A(1) AND B(0),A(2) AND B(0),A(3) AND B(0),A(4) AND B(0));
	and_aux2 <= (A(0) AND B(1), A(1) AND B(1),A(2) AND B(1),A(3) AND B(0),A(4) AND B(1));
	and_aux3 <= (A(0) AND B(2), A(1) AND B(2),A(2) AND B(2),A(3) AND B(2),A(4) AND B(2));
	and_aux4 <= (A(0) AND B(3), A(1) AND B(3),A(2) AND B(3),A(3) AND B(3),A(4) AND B(3));
	and_aux5 <= (A(0) AND B(4), A(1) AND B(4),A(2) AND B(4),A(3) AND B(0),A(4) AND B(4));
	
	suma1 : ten_bit_adder PORT MAP("00000"&and_aux1, "0000"&and_aux2&'0', '0', suma_aux1, Cout_aux(0));
	suma2 : ten_bit_adder PORT MAP(suma_aux1, "000"&and_aux3&"00", '0', suma_aux2, Cout_aux(1));
	suma3 : ten_bit_adder PORT MAP(suma_aux2, "00"&and_aux4&"000", '0', suma_aux3, Cout_aux(2));
	suma4 : ten_bit_adder PORT MAP(suma_aux3, '0'&and_aux5&"0000", '0', suma_aux4, Cout_aux(3));
	
	S <= suma_aux4;

END ARCHITECTURE;