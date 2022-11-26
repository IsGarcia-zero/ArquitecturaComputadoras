LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY multP IS
    PORT (
        r, g : IN STD_LOGIC_VECTOR(7 DOWNTO 0);--las entradas x = r, y = g; es de un nibble - 1
        rS, gS : in std_logic;--signo operadores
        s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);-- la salida, tiene que ser n * 2, donde n es el tamaño maximo de las entradas
        Cfm, Ovfm, Zfm, Sfm : OUT STD_LOGIC --Los carrys
    );
END ENTITY multP;
ARCHITECTURE Behavioral OF multP IS
    SIGNAL inter : STD_LOGIC_VECTOR(63 DOWNTO 0); --este tiene que ser n * n, para que alcance el numero total de los pasos intermedios de la multiplicaci\'on
    SIGNAL sauxm : STD_LOGIC_VECTOR(111 DOWNTO 0); --este tiene que ser n - 1 * tamañoSalidaSi
    --auxiliares de las flags tamaño n - 1
    SIGNAL Cfmm : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL Ovfmm : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL Zfmm : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL Sfmm : STD_LOGIC_VECTOR(6 DOWNTO 0);
    COMPONENT fullA10b IS
        PORT (
            Xi, Yi : IN STD_LOGIC_VECTOR(14 DOWNTO 0); -- tiene que ser tamañoSalida - 1
            aS, bS, oP : IN STD_LOGIC;
            Si : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); -- tiene que ser n * 2
            Cf, Zf, Ovf, Sf : OUT STD_LOGIC
        );
    END COMPONENT fullA10b;
BEGIN
    --este es la primera linea estas lineas son las multiplicaciones, o sea a0b0, a1b0, a2b0 y asi dependiendo de n
    inter(0) <= r(0) AND g(0);
    inter(1) <= r(1) AND g(0);
    inter(2) <= r(2) AND g(0);
    inter(3) <= r(3) AND g(0);
    inter(4) <= r(4) AND g(0);
    inter(5) <= r(5) AND g(0);
    inter(6) <= r(6) AND g(0);
    inter(7) <= r(7) AND g(0);
    -- segunda linea
    inter(8) <= r(0) AND g(1);
    inter(9) <= r(1) AND g(1);
    inter(10) <= r(2) AND g(1);
    inter(11) <= r(3) AND g(1);
    inter(12) <= r(4) AND g(1);
    inter(13) <= r(5) AND g(1);
    inter(14) <= r(6) AND g(1);
    inter(15) <= r(7) AND g(1);
    --tercera linea
    inter(16) <= r(0) AND g(2);
    inter(17) <= r(1) AND g(2);
    inter(18) <= r(2) AND g(2);
    inter(19) <= r(3) AND g(2);
    inter(20) <= r(4) AND g(2);
    inter(21) <= r(5) AND g(2);
    inter(22) <= r(6) AND g(2);
    inter(23) <= r(7) AND g(2);
    -- cuarta linea
    inter(24) <= r(0) AND g(3);
    inter(25) <= r(1) AND g(3);
    inter(26) <= r(2) AND g(3);
    inter(27) <= r(3) AND g(3);
    inter(28) <= r(4) AND g(3);
    inter(29) <= r(5) AND g(3);
    inter(30) <= r(6) AND g(3);
    inter(31) <= r(7) AND g(3);
    -- quinta linea
    inter(32) <= r(0) AND g(4);
    inter(33) <= r(1) AND g(4);
    inter(34) <= r(2) AND g(4);
    inter(35) <= r(3) AND g(4);
    inter(36) <= r(4) AND g(4);
    inter(37) <= r(5) AND g(4);
    inter(38) <= r(6) AND g(4);
    inter(39) <= r(7) AND g(4);
    -- sexta linea
    inter(40) <= r(0) AND g(5);
    inter(41) <= r(1) AND g(5);
    inter(42) <= r(2) AND g(5);
    inter(43) <= r(3) AND g(5);
    inter(44) <= r(4) AND g(5);
    inter(45) <= r(5) AND g(5);
    inter(46) <= r(6) AND g(5);
    inter(47) <= r(7) AND g(5);
    -- septima linea
    inter(48) <= r(0) AND g(6);
    inter(49) <= r(1) AND g(6);
    inter(50) <= r(2) AND g(6);
    inter(51) <= r(3) AND g(6);
    inter(52) <= r(4) AND g(6);
    inter(53) <= r(5) AND g(6);
    inter(54) <= r(6) AND g(6);
    inter(55) <= r(7) AND g(6);
    -- octava linea
    inter(56) <= r(0) AND g(7);
    inter(57) <= r(1) AND g(7);
    inter(58) <= r(2) AND g(7);
    inter(59) <= r(3) AND g(7);
    inter(60) <= r(4) AND g(7);
    inter(61) <= r(5) AND g(7);
    inter(62) <= r(6) AND g(7);
    inter(63) <= r(7) AND g(7);
    -- avr si le entienes sino me dices xde, para hacerlo tuve q hacerlo con una imagen tiene que ser n - 1
    multi1 : fullA10b PORT MAP("0000000" & inter(7 DOWNTO 0), "000000" & inter(15 DOWNTO 8) & '0', '0','0','0', sauxm(111 DOWNTO 96), Cfmm(0), Zfmm(0), Ovfmm(0), Sfmm(0));
    multi2 : fullA10b PORT MAP(sauxm(110 DOWNTO 96), "00000" & inter(23 DOWNTO 16) & "00", '0','0','0', sauxm(95 DOWNTO 80), Cfmm(1), Zfmm(1), Ovfmm(1), Sfmm(1));
    multi3 : fullA10b PORT MAP(sauxm(94 DOWNTO 80), "0000" & inter(31 DOWNTO 24) & "000", '0','0','0', sauxm(79 DOWNTO 64), Cfmm(2), Zfmm(2), Ovfmm(2), Sfmm(2));
    multi4 : fullA10b PORT MAP(sauxm(78 DOWNTO 64), "000" & inter(39 DOWNTO 32) & "0000", '0','0','0', sauxm(63 DOWNTO 48), Cfmm(3), Zfmm(3), Ovfmm(3), Sfmm(3));
    multi5 : fullA10b PORT MAP(sauxm(62 DOWNTO 48), "00" & inter(47 DOWNTO 40) & "00000", '0','0','0', sauxm(47 DOWNTO 32), Cfmm(4), Zfmm(4), Ovfmm(4), Sfmm(4)); 
    multi6 : fullA10b PORT MAP(sauxm(46 DOWNTO 32), '0' & inter(55 DOWNTO 48) & "000000", '0','0','0', sauxm(31 DOWNTO 16), Cfmm(5), Zfmm(5), Ovfmm(5), Sfmm(5)); 
    multi7 : fullA10b PORT MAP(sauxm(30 DOWNTO 16), inter(63 DOWNTO 56) & "0000000", '0','0','0', sauxm(15 DOWNTO 0), Cfmm(6), Zfmm(6), Ovfmm(6), Sfmm(6)); 
    s <= sauxm(15 DOWNTO 0);
    Cfm <= Cfmm(6);
    Zfm <= Zfmm(6);
    Ovfm <= Ovfmm(6);
    Sfm <= rS XOR gS;
END ARCHITECTURE Behavioral;