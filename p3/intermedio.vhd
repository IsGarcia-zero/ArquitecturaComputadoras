library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity intermedio is
    port (
        Cf, Zf, Ov, Sf: in std_logic;
        sCp: in std_logic_vector(8 downto 0);
        Cff, Zff, Ovff, Sff: out std_logic;
        sCpff: out std_logic_vector(8 downto 0)
    );
end entity intermedio;
architecture Behavioral of intermedio is
begin
    Cff <= Cf;
    Zff <= Zf;
    Ovff <= Ov;
    Sff <= Sf;
    sCpff <= sCp;
    
end architecture Behavioral;