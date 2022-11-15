LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY unidad_aritmetica IS 
	PORT( 
		A, B: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		sel_op: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
   );
END ENTITY;

ARCHITECTURE bhr OF unidad_aritmetica IS
	
	SIGNAL suma_aux,res_aux,mul_aux : STD_LOGIC_VECTOR(9 DOWNTO 0);

COMPONENT eight_bit_adder IS
	PORT(
		A,B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Cin : IN STD_LOGIC;
		S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		Cout : OUT STD_LOGIC
	);
END COMPONENT eight_bit_adder;

COMPONENT multiplicador IS
	PORT(
		A,B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;


BEGIN
	PROCESS(sel_op)
	BEGIN
		CASE sel_op IS
			WHEN "00" => S <= suma_aux;
			WHEN "01" => S <= res_aux;
			WHEN "11" => S <= mul_aux;
			WHEN OTHERS => S <= "1111111111";
		END CASE;
	END PROCESS;
	
	sumador : eight_bit_adder PORT MAP(A(7 DOWNTO 0), B(7 DOWNTO 0), '0', suma_aux(7 DOWNTO 0), suma_aux(8));
	restador : eight_bit_adder PORT MAP(A(7 DOWNTO 0), B(7 DOWNTO 0), '1', res_aux(7 DOWNTO 0), res_aux(8));
	multiplicacion : multiplicador PORT MAP(A(4 DOWNTO 0), B(4 DOWNTO 0), mul_aux);

END ARCHITECTURE;