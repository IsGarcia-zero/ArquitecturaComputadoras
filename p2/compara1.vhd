library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity compara1 is
    port (
        x, y, Gin, Lin: in std_logic;
        gout, lout, eout: out std_logic
    );
end entity compara1;
architecture Behavioral of compara1 is
    
begin
    gout <= (x and (not y)) or (x and gin) or (not(y) and gin);
    eout <= ((not(x) and (not y)) and (not(gin) and not(lin))) or ((x and y) and (not(gin) and not(lin)));
    lout <= (y and (not x)) or ( not(x) and lin) or (y and lin);
end architecture Behavioral;