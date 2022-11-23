LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY multP IS
    PORT (
        r, g : IN STD_LOGIC_VECTOR(4 DOWNTO 0);--las entradas x = r, y = g; es de un nibble - 1
        rS, gS : in std_logic;--signo operadores
        s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);-- la salida, tiene que ser n * 2, donde n es el tamaño maximo de las entradas
        Cfm, Ovfm, Zfm, Sfm : OUT STD_LOGIC --Los carrys
    );
END ENTITY multP;
ARCHITECTURE Behavioral OF multP IS
    SIGNAL inter : STD_LOGIC_VECTOR(24 DOWNTO 0); --este tiene que ser n * n, para que alcance el numero total de los pasos intermedios de la multiplicaci\'on
    SIGNAL sauxm : STD_LOGIC_VECTOR(39 DOWNTO 0); --este tiene que ser n - 1 * tamañoSalidaSi
    --auxiliares de las flags tamaño n - 1
    SIGNAL Cfmm : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL Ovfmm : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL Zfmm : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL Sfmm : STD_LOGIC_VECTOR(3 DOWNTO 0);
    COMPONENT fullA10b IS
        PORT (
            Xi, Yi : IN STD_LOGIC_VECTOR(8 DOWNTO 0); -- tiene que ser tamañoSalida - 1
            aS, bS : IN STD_LOGIC;
            Si : OUT STD_LOGIC_VECTOR(9 DOWNTO 0); -- tiene que ser n * 2
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
    -- segunda linea
    inter(5) <= r(0) AND g(1);
    inter(6) <= r(1) AND g(1);
    inter(7) <= r(2) AND g(1);
    inter(8) <= r(3) AND g(1);
    inter(9) <= r(4) AND g(1);
    --tercera linea
    inter(10) <= r(0) AND g(2);
    inter(11) <= r(1) AND g(2);
    inter(12) <= r(2) AND g(2);
    inter(13) <= r(3) AND g(2);
    inter(14) <= r(4) AND g(2);
    -- cuarta linea
    inter(15) <= r(0) AND g(3);
    inter(16) <= r(1) AND g(3);
    inter(17) <= r(2) AND g(3);
    inter(18) <= r(3) AND g(3);
    inter(19) <= r(4) AND g(3);
    -- quinta linea
    inter(20) <= r(0) AND g(4);
    inter(21) <= r(1) AND g(4);
    inter(22) <= r(2) AND g(4);
    inter(23) <= r(3) AND g(4);
    inter(24) <= r(4) AND g(4);
    -- avr si le entienes sino me dices xde, para hacerlo tuve q hacerlo con una imagen tiene que ser n - 1
    multi1 : fullA10b PORT MAP("0000" & inter(4 DOWNTO 0), "000" & inter(9 DOWNTO 5) & '0', '0','0', sauxm(39 DOWNTO 30), Cfmm(0), Zfmm(0), Ovfmm(0), Sfmm(0));
    multi2 : fullA10b PORT MAP(sauxm(38 DOWNTO 30), "00" & inter(14 DOWNTO 10) & "00", '0','0', sauxm(29 DOWNTO 20), Cfmm(1), Zfmm(1), Ovfmm(1), Sfmm(1));
    multi3 : fullA10b PORT MAP(sauxm(28 DOWNTO 20), '0' & inter(19 DOWNTO 15) & "000", '0','0', sauxm(19 DOWNTO 10), Cfmm(2), Zfmm(2), Ovfmm(2), Sfmm(2));
    multi4 : fullA10b PORT MAP(sauxm(18 DOWNTO 10), inter(24 DOWNTO 20) & "0000", '0','0', sauxm(9 DOWNTO 0), Cfmm(3), Zfmm(3), Ovfmm(3), Sfmm(3));
    s <= sauxm(9 DOWNTO 0);
    Cfm <= Cfmm(3);
    Zfm <= Zfmm(3);
    Ovfm <= Ovfmm(3);
    Sfm <= rS XOR gS;
END ARCHITECTURE Behavioral;