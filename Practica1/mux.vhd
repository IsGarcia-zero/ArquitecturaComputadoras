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
    signal auxSM : std_logic_vector(9 downto 0);
    signal auxSAL: std_logic_vector(9 downto 0);
begin
    Multiplexacion: process(a, b, sM, sA, sL, sS, salida)
    begin
    if sM = "00" then --Artimethic
        
    elsif sM = "01" then --Shifter
        
    elsif sM = "10" then --Logic
        
    end if;
    end process Multiplexacion;
end architecture muxArch;