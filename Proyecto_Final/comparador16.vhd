library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity comparador16 is
    port (
        x4, y4: in std_logic_vector(15 downto 0);
        g0, l0: in std_logic;
        gtt, eqq, ltt: out std_logic
    );
end entity comparador16;
architecture Behavioral of comparador16 is
    signal gts, eqs, lts: std_logic_vector(15 downto 0);
    component compara1 is
        port (
            x, y, Gin, Lin: in std_logic;
            gout, lout, eout: out std_logic
        );
    end component compara1;
begin
    comp0: compara1 port map(x4(0), y4(0), g0, l0, gts(0), lts(0), eqs(0));
    comparaP: for i in 1 to 14 generate
        comp: compara1 port map(x4(i), y4(i), gts(i-1), lts(i-1), gts(i), lts(i), eqs(i));
    end generate comparaP;
    comp3: compara1 port map(x4(15), y4(15), gts(14), lts(14), gtt, ltt, eqq);
end architecture Behavioral;