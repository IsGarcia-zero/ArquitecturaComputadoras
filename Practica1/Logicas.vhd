LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY logicas IS PORT (

<<<<<<< HEAD
	a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	clk : INOUT STD_LOGIC;
	Ya : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);

);

END logicas;
ARCHITECTURE Logicas OF logicas IS
BEGIN

	logica : PROCESS (clk, sel, sel_esp, Aa, Ba, bandera, var)

	BEGIN

		IF rising_edge(clk) THEN
			CASE sel IS
				WHEN "00" => --logicas
					IF (sel_esp = "00") THEN --negacion 
						Ya <= NOT('0' & Aa);
					ELSIF (sel_esp = "01") THEN --complemento a 2	
						IF ((NOT Aa) = "1111111111") THEN
							Ya <= (NOT('1' & Aa)) + 1;
						ELSE
							Ya <= (NOT('0' & Aa)) + 1;
						END IF;
					ELSIF (sel_esp = "10") THEN --and
						Ya <= '0' & (Aa AND Ba);
					ELSE
						Ya <= '0' & (Aa OR Ba); --or
					END IF;

				WHEN "01" => --shifters
					IF (cont = 0) THEN
						bandera <= '1'; --
					ELSE
						Ya <= '0' & var;
						IF (cont > 9) THEN
							bandera <= '0'; -- 0
						END IF;
					END IF;
			END PROCESS logica;

		END ARCHITECTURE logicas;
=======

entity logicas is port (

        a: in std_logic_vector(9 downto 0); 
		b: in std_logic_vector(9 downto 0); 
		clk: inout std_logic; 
		salida: out std_logic_vector(10 downto 0);
);
end entity logicas ;


architecture Logicas of logicas is 


begin
	
	
	logica : process (clk,sel,sel_esp,a,b,bandera,var)

begin 

if rising_edge(clk) then
			case sel is
				when "00" =>   --logicas
					if(sel_esp="00")then --negacion 
						salida <= not('0'&a);
					elsif(sel_esp="01") then  --complemento a 2	
						if((not a)="1111111111") then
							salida <= (not('1'&a))+1;
						else
							salida <= (not('0'&a))+1;
						end if;
					elsif(sel_esp="10")then  --and
						salida <='0'&(a AND b);
					else
					   salida <='0'&(a OR b);  --or
					end if;
			end process logica;
					
end architecture logicas;
>>>>>>> c4c11b1722190194ca5c9bcadba29412abc93556
