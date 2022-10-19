library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


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
						if((not Aa)="1111111111") then
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
