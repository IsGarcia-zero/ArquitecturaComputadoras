library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity mux is
    port (
        a, b : in std_logic_vector(9 downto 0);
        sM, sA, sL: in std_logic_vector(1 downto 0);
        sS: in std_logic;
        salida: out std_logic_vector(9 downto 0)
    );
end entity mux;
architecture muxArch of mux is
    signal aux : std_logic_vector(9 downto 0);
begin
    Multiplexacion: process(a, b, sM, salida)
    begin
    if sM = "00" then --Artimethic
        aux <= salida;
    elsif sM = "01" then --Shifter
        
    elsif sM = "10" then --Logic
        
    end if;
    end process Multiplexacion;
end architecture muxArch;