LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY fullA10b IS
    PORT (
        Xi, Yi : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        Cin0 : IN STD_LOGIC;
        Si : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
        Cf, Zf, Ovf, Sf : OUT STD_LOGIC
    );
END ENTITY fullA10b;
ARCHITECTURE fa10b OF fullA10b IS
    SIGNAL Yop : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL Caux : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL Saux : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL Siaux : STD_LOGIC_VECTOR(9 DOWNTO 0);
    signal Cfaux: std_logic;
    signal Zfaux: std_logic;
    signal Ovfaux: std_logic;
    signal Sfaux: std_logic;
    --SIGNAL i : integer range 0 to 7:=0;
    COMPONENT fullAdder IS
        PORT (
            A, B, Cin : IN STD_LOGIC;
            Cout, Suma : OUT STD_LOGIC
        );
    END COMPONENT fullAdder;
    COMPONENT negativoP IS
        PORT (
            Si : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            Cff, Zff, Ovff, Sff : IN STD_LOGIC;
            C, Z, Ov, S : OUT STD_LOGIC;
            Sc : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
        );
    END COMPONENT negativoP;
BEGIN
    Yop(0) <= Yi(0) XOR Cin0;
    Yop(1) <= Yi(1) XOR Cin0;
    Yop(2) <= Yi(2) XOR Cin0;
    Yop(3) <= Yi(3) XOR Cin0;
    Yop(4) <= Yi(4) XOR Cin0;
    Yop(5) <= Yi(5) XOR Cin0;
    Yop(6) <= Yi(6) XOR Cin0;
    Yop(7) <= Yi(7) XOR Cin0;
    Yop(8) <= Yi(8) XOR Cin0;
    s0 : fullAdder PORT MAP(Xi(0), Yop(0), Cin0, Caux(0), Saux(0));
    s1 : fullAdder PORT MAP(Xi(1), Yop(1), Caux(0), Caux(1), Saux(1));
    s2 : fullAdder PORT MAP(Xi(2), Yop(2), Caux(1), Caux(2), Saux(2));
    s3 : fullAdder PORT MAP(Xi(3), Yop(3), Caux(2), Caux(3), Saux(3));
    s4 : fullAdder PORT MAP(Xi(4), Yop(4), Caux(3), Caux(4), Saux(4));
    s5 : fullAdder PORT MAP(Xi(5), Yop(5), Caux(4), Caux(5), Saux(5));
    s6 : fullAdder PORT MAP(Xi(6), Yop(6), Caux(5), Caux(6), Saux(6));
    s7 : fullAdder PORT MAP(Xi(7), Yop(7), Caux(6), Caux(7), Saux(7));
    s8 : fullAdder PORT MAP(Xi(8), Yop(8), Caux(7), Caux(8), Saux(8));
    WITH Cin0 SELECT Siaux <=
        Caux(8) & Saux WHEN '0',
        NOT Caux(8) & Saux WHEN '1';
    --Si <= Caux(4) & Saux;
    Cfaux <= Cin0 XOR Caux(8);
    Zfaux <= NOT(Saux(0) OR Saux(1) OR Saux(2) OR Saux(3) OR Saux(4) OR Saux(5) OR Saux(6) OR Saux(7) OR Saux(8) OR Caux(8));
    Ovfaux <= Caux(7) XOR Caux(8);
    WITH Cin0 SELECT Sfaux <=
        Caux(8) WHEN '0',
        NOT Caux(8) WHEN '1';
    negativo : negativoP PORT MAP(Siaux, Cfaux, Zfaux, Ovfaux, Sfaux, Cf, Zf, Ovf, Sf, Si(8 downto 0));
END ARCHITECTURE fa10b;