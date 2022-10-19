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
		
end logicas;


architecture Logicas of logicas is 


begin
	
	logica: process(clk,sel,sel_esp,Aa,Ba,bandera,var)

begin 



if rising_edge(clk) then
			case sel is
				when "00" =>   --logicas
					if(sel_esp="00")then --negacion 
						Ya <= not('0'&Aa);
					elsif(sel_esp="01") then  --complemento a 2	
						if((not Aa)="1111111111") then
							Ya <= (not('1'&Aa))+1;
						else
							Ya <= (not('0'&Aa))+1;
						end if;
					elsif(sel_esp="10")then  --and
						Ya<='0'&(Aa AND Ba);
					else
					   Ya<='0'&(Aa OR Ba);  --or
					end if;
					
				when "01" =>   --shifters
					if(cont=0) then
						bandera <= '1'; --
					else
						Ya <= '0'&var;
						if (cont>9) then
							bandera <= '0';  -- 0
						end if;
					end if;


			end process logica;
					
END ARCHITECTURE logicas;

