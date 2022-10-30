LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
--nombre de las varriables cambiaselos por si acaso, de los selectores
--aparte de checar bien que va a entrar y salir, porq luego quien sabe
--de donde obtienes los datos, por ejemplo el selector de los full adders
ENTITY UAritmetica IS
	PORT (
		selector : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		A, B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		SalidaMux: out std_logic_vector(3 downto 0);
		Carry, Overflow, Zero, Sum, Cout : OUT STD_LOGIC
	);
END ENTITY UAritmetica;

--- Suma(1 byte), Resta(1 byte) y Multiplicacion(5 bits)

ARCHITECTURE Aritmetica OF UAritmetica IS

	SIGNAL A_Prime, B_Prime : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL A_Temp, B_Temp : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL S_Prime : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL S_Prime_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL S_Temp : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL Carry1, Overflow1, Zero1, Sum1, Cout1, Carry2, Overflow2, Zero2, Sum2, Cout2, Carry3, Overflow3, Zero3, Sum3, Cout3 : STD_LOGIC;

	COMPONENT Full_Adder_wF IS PORT (
		operation : IN STD_LOGIC;
		Var1, Var2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Res : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		CarryF, OverflowF, ZeroF, SumF, CoutF : OUT STD_LOGIC
		);
	END COMPONENT;
	
--Falta este
	COMPONENT Multiplicador IS PORT (
		ope : IN STD_LOGIC;
		VarA, VarB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		Salida : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		carryF, overflowF, zeroF, sumF : OUT STD_LOGIC
		);
	END COMPONENT;

BEGIN

	Cout3 <= '0';

	A_Temp <= A(7 DOWNTO 0);
	B_Temp <= B(7 DOWNTO 0);

	A_Prime <= A(4 DOWNTO 0);
	B_Prime <= B(4 DOWNTO 0);

	Suma : Full_Adder_wF PORT MAP('0', A_Temp, B_Temp, S_Prime, Carry1, Overflow1, Zero1, Sum1, Cout1);
	Res : Full_Adder_wF PORT MAP('1', A_Temp, B_Temp, S_Prime_2, Carry2, Overflow2, Zero2, Sum2, Cout2);
	Mul : Multiplicador PORT MAP('0', A_Prime, B_Prime, S_Temp, Carry3, Overflow3, Zero3, Sum3);

	PROCESS (selector, A, B) IS
	BEGIN
		CASE selector IS
			WHEN "00" =>
				--Suma
				S <= "00" & S_Prime;
				Carry <= Carry1;
				Overflow <= Overflow1;
				Zero <= Zero1;
				Sum <= Sum1;
				Cout <= Cout1;
				SalidaMux <= "0001";
			WHEN "01" =>
				--Resta
				S <= "00" & S_Prime_2;
				Carry <= Carry2;
				Overflow <= Overflow2;
				Zero <= Zero2;
				Sum <= Sum2;
				Cout <= Cout2;
				SalidaMux <= "0010";
			WHEN "10" =>
				--Multiplicacion
				S <= S_Temp;
				Carry <= Carry3;
				Overflow <= Overflow3;
				Zero <= Zero3;
				Sum <= Sum3;
				Cout <= Cout3;
				SalidaMux <= "0100";
			WHEN "11" =>
				--Dividir
				S <= "0000000000";
				Carry <= '0';
				Overflow <= '0';
				Zero <= '0';
				Sum <= '0';
				Cout <= '0';
				SalidaMux <= "1000";
			WHEN OTHERS =>
				S <= "0000000000";
				Carry <= '0';
				Overflow <= '0';
				Zero <= '0';
				Sum <= '0';
				Cout <= '0';
				SalidaMux <= "0000";
		END CASE;
	END PROCESS;
END ARCHITECTURE Aritmetica;