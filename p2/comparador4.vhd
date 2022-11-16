library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity comparador4 is
    port (
        x4, y4: in std_logic_vector(3 downto 0);
        g0, l0: in std_logic;
        gtt, eqq, ltt: out std_logic
    );
end entity comparador4;
architecture Behavioral of comparador4 is
    signal gts, eqs, lts: std_logic_vector(2 downto 0);
    component compara1 is
        port (
            x, y, Gin, Lin: in std_logic;
            gout, lout, eout: out std_logic
        );
    end component compara1;
begin
    comp0: compara1 port map(x4(0), y4(0), g0, l0, gts(0), lts(0), eqs(0));
    comp1: compara1 port map(x4(1), y4(1), gts(0), lts(0), gts(1), lts(1), eqs(1));
    comp2: compara1 port map(x4(2), y4(2), gts(1), lts(1), gts(2), lts(2), eqs(2));
    comp3: compara1 port map(x4(3), y4(3), gts(2), lts(2), gtt, ltt, eqq);
end architecture Behavioral;