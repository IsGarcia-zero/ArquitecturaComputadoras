library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity compara1 is
    port (
        x, y, gin, lin: in std_logic;
        gout, lout, eout: out std_logic
    );
end entity compara1;
architecture Behavioral of compara1 is
    signal aux1, aux2, aux3: std_logic;
begin
    gout <= (x and (not y)) or (x and gin) or ((not y) and gin);
    aux1 <= (not x) and (not y);
    aux2 <= (not gin) and (not lin);
    aux3 <= x and y;
    eout <= (aux1 and aux2) or (aux3 and aux2);
    lout <= (y and not x) or ( not x and lin) or (y and lin);
end architecture Behavioral;