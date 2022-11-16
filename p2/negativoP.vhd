library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
entity negativoP is
    port (
        Si: in std_logic_vector(9 downto 0);
        Cff, Zff, Ovff, Sff: in std_logic;
        C, Z, Ov, S: out std_logic;
        Sc: out std_logic_vector(8 downto 0)
    );
end entity negativoP;
architecture Behavioral of negativoP is
    signal Saux: std_logic_vector(9 downto 0);
begin
    with Sff select Saux <=
        Si when '0',
        (not Si) + 1 when '1';
    C <= Cff;
    Z <= Zff;
    Ov <= Ovff;
    S <= Sff;
    Sc <= Saux(8 downto 0);
end architecture Behavioral;