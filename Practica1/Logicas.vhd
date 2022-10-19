library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity logicas is port (

        a: in std_logic_vector(9 downto 0); 
		b: in std_logic_vector(9 downto 0); 
		clk: inout std_logic; 
		Ya: out std_logic_vector(10 downto 0);
);
end entity logicas ;


architecture Logicas of logicas is 


begin
	
	
	logica : process (clk,sel,sel_esp,a,b ,bandera,var)

begin 

if rising_edge(clk) then
			case sel is
				when "00" =>   --logicas
					if(sel_esp="00")then --negacion 
						Ya <= not('0'&Aa);
					elsif(sel_esp="01") then  --complemento a 2	
						if((not a)="1111111111") then
							Ya <= (not('1'&a))+1;
						else
							Ya <= (not('0'&a))+1;
						end if;
					elsif(sel_esp="10")then  --and
						Ya<='0'&(Aa AND b);
					else
					   Ya<='0'&(a OR b);  --or
					end if;
			end process logica;
					
END ARCHITECTURE logicas;
