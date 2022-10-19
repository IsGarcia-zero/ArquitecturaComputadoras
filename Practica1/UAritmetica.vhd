LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY UAritmetica IS
    PORT (
        selector : in std_logic_vector (1 downto 0);
        A,B : in std_logic_vector(7 downto 0);
        S : out std_logic_vector(9 downto 0);
        Carry, Overflow, Zero, Sum, Cout : out std_logic
    );
END ENTITY UAritmetica;

--- Suma(1 byte), Resta(1 byte) y Multiplicacion(5 bits)

ARCHITECTURE Aritmetica OF UAritmetica IS
	
	signal A_Prime, B_Prime : std_logic_vector(5 downto 0);
	signal S_Prime : std_logic_vector(7 downto 0);
	signal S_Temp : std_logic_vector(9 downto 0);
	 
	 component Full_Adder_wF is PORT( 
        selector : in std_logic;
        A,B : in std_logic_vector(3 downto 0);
        S : out std_logic_vector(3 downto 0);
        Carry, Overflow, Zero, Sum, Cout : out std_logic
    );
	 end component;
	 
	 component Multiplicador is PORT( 
        A,B : in std_logic_vector(4 downto 0);
		  S : out std_logic_vector(9 downto 0);
        Carry, Overflow, Zero, Sum : out std_logic
    ); 
	 end component;

	 BEGIN
	 
	 A_Prime <= A(0) & A(1) & A(2) & A(3) & A(4);
	 B_Prime <= B(0) & B(1) & B(2) & B(3) & B(4);
	 
	 Res: Full_Adder_wF Port Map('1',A,B,S_Prime,Carry,Overflow,Zero,Sum,Cout);
	 Suma: Full_Adder_wF Port Map('0',A,B,S_Prime,Carry,Overflow,Zero,Sum,Cout);
	 Mul: Multiplicador Port Map(A_Prime,B_Prime,S_Temp,Carry,Overflow,Zero,Sum);		 
					 
	 process(selector,A,B) is
		begin
			case selector is
				when "00" =>
					 --Suma
					 S <= "00" & S_Prime;
			
				when "01" =>
					 --Resta
					 S <= "00" & S_Prime;
			
				when "10" =>
					 --Multiplicacion
					 S <= S_Temp;
			
				when others =>
					 S <= "0000000000";
		end case;
	end process;
END ARCHITECTURE Aritmetica;