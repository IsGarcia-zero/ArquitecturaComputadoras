library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity mux is
    port (
        a, s, l: in std_logic_vector(9 downto 0);
        sM: in std_logic_vector(1 downto 0);
        salida: out std_logic_vector(9 downto 0)
    );
end entity mux;
architecture muxArch of mux is
    signal aux : std_logic_vector(9 downto 0);
begin
    Multiplexacion: process(a, b, sM, salida)
    begin
    if sM = "00" then --Artimethic
        aux <= a;
    elsif sM = "01" then --Shifter
        aux <= s;
    elsif sM = "10" then --Logic
        aux <= l;
    end if;
    end process Multiplexacion;
    salida <= aux;
end architecture muxArch;