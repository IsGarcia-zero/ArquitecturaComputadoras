library IEEE;
use IEEE.std_logic_1164.all;

entity frecuencia_5Hz is
	port(
		reloj : in std_logic;
		reset : in std_logic;
		sal,sal2 : out std_logic
	);
	
end frecuencia_5Hz;

architecture Contador of frecuencia_5Hz is

	signal salida, salida2 : std_logic;
	 --Para frecuencia es (50Mhz/5Hz) - 1 = 9999999. Donde 5Hz es la frecuencia que se quiere obtener y 50MHz es la frecuencia del FPGA
	signal cuenta, cuenta2 : integer range 0 to 49999999 := 0;
	
begin

	DivisorFrecuencia : process(reloj, reset) begin
	
		if reset = '0' then
			salida <= '0';
			cuenta <= 0;
			
		elsif rising_edge(reloj) then
			if cuenta = 80000 then
				cuenta <= 0;
				salida <=not salida;
				
			else
				cuenta <= cuenta + 1;
			end if;
			if cuenta2 = 9999999 then
				cuenta2 <= 0;
				salida2 <=not salida2;
				
			else
				cuenta2 <= cuenta2 + 1;
			end if;
		end if;
	end process;
	
sal <= salida;
sal2 <= salida2;
	
end Contador;