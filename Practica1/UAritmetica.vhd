LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY UAritmetica IS
    PORT (
        selector : in std_logic_vector (1 downto 0);
        A,B : in std_logic_vector(9 downto 0);
        S : out std_logic_vector(9 downto 0);
        Carry, Overflow, Zero, Sum, Cout : out std_logic
    );
END ENTITY UAritmetica;

--- Suma(1 byte), Resta(1 byte) y Multiplicacion(5 bits)

ARCHITECTURE Aritmetica OF UAritmetica IS
	
	signal A_Prime, B_Prime : std_logic_vector(4 downto 0);
	signal A_Temp, B_Temp : std_logic_vector(7 downto 0);
	signal S_Prime   : std_logic_vector(7 downto 0);
	signal S_Prime_2 : std_logic_vector(7 downto 0);
	signal S_Temp    : std_logic_vector(9 downto 0);
	signal Carry1, Overflow1, Zero1, Sum1, Cout1, Carry2, Overflow2, Zero2, Sum2, Cout2, Carry3, Overflow3, Zero3, Sum3, Cout3 : std_logic;
	 
	 component Full_Adder_wF is PORT( 
        selector : in std_logic;
        A,B : in std_logic_vector(7 downto 0);
        S : out std_logic_vector(7 downto 0);
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
	 
	 Cout3 = '0';
	 
	 A_Temp <= A(7 downto 0);
	 B_Temp <= B(7 downto 0);
	 
	 A_Prime <= A(4 downto 0);
	 B_Prime <= B(4 downto 0);
	 
	 Suma: Full_Adder_wF Port Map('0', A_Temp,  B_Temp ,S_Prime  ,Carry1,Overflow1,Zero1,Sum1,Cout1);
	 Res:  Full_Adder_wF Port Map('1', A_Temp,  B_Temp ,S_Prime_2,Carry2,Overflow2,Zero2,Sum2,Cout2);
	 Mul:  Multiplicador Port Map(     A_Prime, B_Prime,S_Temp   ,Carry3,Overflow3,Zero3,Sum3);		 
					 
	 process(selector,A,B) is
		begin
			case selector is
				when "00" =>
					 --Suma
					 S <= S_Prime & "00";
					 Carry <= Carry1;
					 Overflow <= Overflow1;
					 Zero <= Zero1;
					 Sum <= Sum1;
					 Cout <= Cout1;
			
				when "01" =>
					 --Resta
					 S <= S_Prime_2 & "00";
					 Carry <= Carry2;
					 Overflow <= Overflow2;
					 Zero <= Zero2;
					 Sum <= Sum2;
					 Cout <= Cout2;
			
				when "10" =>
					 --Multiplicacion
					 S <= S_Temp;
					 Carry <= Carry3;
					 Overflow <= Overflow3;
					 Zero <= Zero3;
					 Sum <= Sum3;
					 Cout <= Cout3;
			
				when others =>
					 S <= "0000000000";
					 Carry <= '0';
					 Overflow <= '0';
					 Zero <= '0';
					 Sum <= '0';
					 Cout <= '0';
		end case;
	end process;
END ARCHITECTURE Aritmetica;
