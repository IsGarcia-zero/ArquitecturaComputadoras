LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY fullA10b IS
    PORT (
        Xi, Yi : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        aS, bS : IN STD_LOGIC;
        Si : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
        Cf, Zf, Ovf, Sf : OUT STD_LOGIC
    );
END ENTITY fullA10b;
ARCHITECTURE fa10b OF fullA10b IS
    SIGNAL Yop : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL Xop : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL Caux : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL Caux2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL Saux : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL Siaux : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL Cfaux : STD_LOGIC;
    SIGNAL Zfaux : STD_LOGIC;
    SIGNAL Ovfaux : STD_LOGIC;
    SIGNAL Sfaux : STD_LOGIC;
    SIGNAL Cin0 : STD_LOGIC;
    --SIGNAL i : integer range 0 to 7:=0;
    COMPONENT fullAdder IS
        PORT (
            A, B, Cin, Cin2 : IN STD_LOGIC;
            Cout, Suma, Cout2 : OUT STD_LOGIC
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
    --Yop <= not Yi;
    Yop(0) <= Yi(0) XOR bS;
    Yop(1) <= Yi(1) XOR bS;
    Yop(2) <= Yi(2) XOR bS;
    Yop(3) <= Yi(3) XOR bS;
    Yop(4) <= Yi(4) XOR bS;
    Yop(5) <= Yi(5) XOR bS;
    Yop(6) <= Yi(6) XOR bS;
    Yop(7) <= Yi(7) XOR bS;
    Yop(8) <= Yi(8) XOR bS;
    --Xop <= not Xi;
    Xop(0) <= Xi(0) XOR aS;
    Xop(1) <= Xi(1) XOR aS;
    Xop(2) <= Xi(2) XOR aS;
    Xop(3) <= Xi(3) XOR aS;
    Xop(4) <= Xi(4) XOR aS;
    Xop(5) <= Xi(5) XOR aS;
    Xop(6) <= Xi(6) XOR aS;
    Xop(7) <= Xi(7) XOR aS;
    Xop(8) <= Xi(8) XOR aS;
    -- Operaciones
    --Cin0 <= aS XOR bS;
    s0 : fullAdder PORT MAP(Xop(0), Yop(0), aS, bS, Caux(0), Saux(0), Caux2(0));
    s1 : fullAdder PORT MAP(Xop(1), Yop(1), Caux(0),Caux2(0), Caux(1), Saux(1), Caux2(1));
    s2 : fullAdder PORT MAP(Xop(2), Yop(2), Caux(1),Caux2(1), Caux(2), Saux(2), Caux2(2));
    s3 : fullAdder PORT MAP(Xop(3), Yop(3), Caux(2),Caux2(2), Caux(3), Saux(3), Caux2(3));
    s4 : fullAdder PORT MAP(Xop(4), Yop(4), Caux(3),Caux2(3), Caux(4), Saux(4), Caux2(4));
    s5 : fullAdder PORT MAP(Xop(5), Yop(5), Caux(4),Caux2(4), Caux(5), Saux(5), Caux2(5));
    s6 : fullAdder PORT MAP(Xop(6), Yop(6), Caux(5),Caux2(5), Caux(6), Saux(6), Caux2(6));
    s7 : fullAdder PORT MAP(Xop(7), Yop(7), Caux(6),Caux2(6), Caux(7), Saux(7), Caux2(7));
    s8 : fullAdder PORT MAP(Xop(8), Yop(8), Caux(7),Caux2(7), Caux(8), Saux(8), Caux2(8));
    -- Si <= Caux(8)&Saux;
    WITH Cin0 SELECT Siaux <=
        Caux(8) & Saux WHEN '0',
        NOT Caux(8) & Saux WHEN '1';
    -- --Si <= Caux(4) & Saux;
    Cfaux <= aS XOR bS XOR Caux(8);
    Zfaux <= NOT(Saux(0) OR Saux(1) OR Saux(2) OR Saux(3) OR Saux(4) OR Saux(5) OR Saux(6) OR Saux(7) OR Saux(8) OR Caux(8));
    Ovfaux <= Caux(7) XOR Caux(8);
    -- WITH Cin0 SELECT Sfaux <=
    --     Caux(8) WHEN '0',
    --     NOT Caux(8) WHEN '1';
    -- negativo : negativoP PORT MAP(Siaux, Cfaux, Zfaux, Ovfaux, Sfaux, Cf, Zf, Ovf, Sf, Si(8 DOWNTO 0));
END ARCHITECTURE fa10b;