LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_unsigned.ALL;
ENTITY fullA10b IS
    PORT (
        Xi, Yi : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
        aS, bS, oP : IN STD_LOGIC;
        Si : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        Cf, Zf, Ovf, Sf : OUT STD_LOGIC
    );
END ENTITY fullA10b;
ARCHITECTURE fa10b OF fullA10b IS
    SIGNAL Yop : STD_LOGIC_VECTOR(14 DOWNTO 0);
    SIGNAL Xop : STD_LOGIC_VECTOR(14 DOWNTO 0);
    SIGNAL Caux : STD_LOGIC_VECTOR(14 DOWNTO 0);
    SIGNAL Caux2 : STD_LOGIC_VECTOR(14 DOWNTO 0);
    SIGNAL Saux : STD_LOGIC_VECTOR(14 DOWNTO 0);
    SIGNAL Siaux : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL ASS : STD_LOGIC;
    SIGNAL BSS : STD_LOGIC;
    SIGNAL OPP : STD_LOGIC;
    SIGNAL Cfaux : STD_LOGIC;
    SIGNAL Zfaux : STD_LOGIC;
    SIGNAL Ovfaux : STD_LOGIC;
    SIGNAL Sfaux : STD_LOGIC;
    SIGNAL Cin0 : STD_LOGIC;
    --SIGNAL i : integer range 0 to 7:=0;
    COMPONENT fullAdder IS
        PORT (
            A, B, Cin, Cin2, Cin3 : IN STD_LOGIC;
            Cout, Suma, Cout2 : OUT STD_LOGIC
        );
    END COMPONENT fullAdder;
    COMPONENT negativoP IS
        PORT (
            Si : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            Cff, Zff, Ovff, Sff : IN STD_LOGIC;
            C, Z, Ov, S : OUT STD_LOGIC;
            Sc : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
        );
    END COMPONENT negativoP;
BEGIN
    --Yop <= not Yi;
    YopP: for i in 0 to 14 generate
        Yop(i) <= Yi(i) XOR bS XOR oP;
    end generate YopP;
    --Xop <= not Xi;
    XopP: for i in 0 to 14 generate
        Xop(i) <= Xi(i) XOR aS;
    end generate XopP;
    --jdr
    WITH (aS AND bS AND oP) select ASS <=
        aS WHEN '0',
        aS XOR oP WHEN '1';
    WITH (aS AND bS AND oP) select BSS <=
        bS WHEN '0',
        bS XOR oP WHEN '1';
    WITH oP select OPP <=
        oP WHEN '0',
        oP OR bS WHEN '1';
    --Componente
    s0 : fullAdder PORT MAP(Xop(0), Yop(0), ASS, BSS, OPP, Caux(0), Saux(0), Caux2(0));
    sR: for i in 1 to 14 generate
        sP: fullAdder PORT MAP(Xop(i), Yop(i), Caux(i-1), Caux2(i-1), '0', Caux(i), Saux(i), Caux2(i));
    end generate sR;
    --Si <= Caux(8)&Saux;
    WITH (aS XOR bS XOR oP) SELECT Siaux <=
        Caux(14) & Saux WHEN '0',
        NOT Caux(14) & Saux WHEN '1';
    -- --Si <= Caux(4) & Saux;
    Cfaux <= aS XOR bS XOR Caux(14);
    Zfaux <= NOT(Saux(0) OR Saux(1) OR Saux(2) OR Saux(3) OR Saux(4) OR Saux(5) OR Saux(6) OR Saux(7) OR Saux(8) OR Saux(9) OR Saux(10) OR Saux(11) OR Saux(12) OR Saux(13) OR Saux(14) );
    Ovfaux <= Caux(13) XOR Caux(14);
    WITH (aS XOR bS XOR oP) SELECT Sfaux <=
        Caux(14) WHEN '0',
        NOT Caux(14) WHEN '1';
    negativo : negativoP PORT MAP(Siaux, Cfaux, Zfaux, Ovfaux, Sfaux, Cf, Zf, Ovf, Sf, Si(14 DOWNTO 0));
END ARCHITECTURE fa10b;