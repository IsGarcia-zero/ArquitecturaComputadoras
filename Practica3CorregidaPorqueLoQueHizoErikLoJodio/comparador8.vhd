library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity comparador8 is
    port (
        x, y: in std_logic_vector(7 downto 0);
        g0, l0: in std_logic;
        gtt, eqq, ltt: out std_logic
    );
end entity comparador8;

architecture Behavioral of comparador8 is
    signal gts, eqs, lts: std_logic_vector(1 downto 0);
    component comparador4 is
        port (
            x4, y4: in std_logic_vector(3 downto 0);
				g0, l0: in std_logic;
				gtt, eqq, ltt: out std_logic
        );
    end component comparador4;
begin
    comp0: comparador4 port map(x(3 downto 0), y(3 downto 0), g0, l0, gts(0), lts(0), eqs(0));
    comp1: comparador4 port map(x(7 downto 4), y(7 downto 4), gts(0), lts(0), gtt, eqq, ltt);
end architecture Behavioral;