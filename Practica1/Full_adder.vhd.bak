LIBRARY IEEE;
use STD_LOGIC_1164.ALL;

entity Fadder is PORT( 
    A, B, Cin: in std_logic;
    S, Cout: out std_logic
    );
end Fadder;

architecture FullA of Fadder is 
    Begin
    S <= A xor B xor Cin;
    Cout <= (A and B) or (Cin and (A xor B));
end FullA;