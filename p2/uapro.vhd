LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY uapro IS
    PORT (
        Xi, Yi : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        selector : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        clk, rst : IN STD_LOGIC;
        aS, bS : IN STD_LOGIC;
        Si : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
        C, Z, Ov, S : OUT STD_LOGIC
    );
END ENTITY uapro;
ARCHITECTURE Beahvioral OF uapro IS
    SIGNAL auxSalida1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL auxC1 : STD_LOGIC;
    SIGNAL auxZ1 : STD_LOGIC;
    SIGNAL auxOv1 : STD_LOGIC;
    SIGNAL auxS1 : STD_LOGIC;
    SIGNAL auxSalida2 : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL auxC2 : STD_LOGIC;
    SIGNAL auxZ2 : STD_LOGIC;
    SIGNAL auxOv2 : STD_LOGIC;
    SIGNAL auxS2 : STD_LOGIC;
    SIGNAL auxSalida3 : STD_LOGIC_VECTOR(9 DOWNTO 0);
    SIGNAL auxC3 : STD_LOGIC;
    SIGNAL auxZ3 : STD_LOGIC;
    SIGNAL auxOv3 : STD_LOGIC;
    SIGNAL auxS3 : STD_LOGIC;
    SIGNAL auxSalida4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL auxC4 : STD_LOGIC := '0';
    SIGNAL auxZ4 : STD_LOGIC := '0';
    SIGNAL auxOv4 : STD_LOGIC;
    SIGNAL auxS4 : STD_LOGIC := '0';
    SIGNAL auxx : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL readas : STD_LOGIC;
    SIGNAL ovsj : STD_LOGIC;
    COMPONENT fullA10b IS
        PORT (
            Xi, Yi : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            aS, bS, oP : IN STD_LOGIC;
            Si : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
            Cf, Zf, Ovf, Sf : OUT STD_LOGIC
        );
    END COMPONENT fullA10b;
    COMPONENT multP IS
        PORT (
            r, g : IN STD_LOGIC_VECTOR(4 DOWNTO 0);--las entradas x = r, y = g; es de un nibble - 1
            rS, gS : IN STD_LOGIC;--signo operadores
            s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);-- la salida, tiene que ser n * 2, donde n es el tamaño maximo de las entradas
            Cfm, Ovfm, Zfm, Sfm : OUT STD_LOGIC --Los carrys
        );
    END COMPONENT multP;
    COMPONENT Divisorsito IS
        PORT (
            a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            aS, bS : IN STD_LOGIC;
            errorsig, sF, zF : OUT STD_LOGIC;
            resultLow, resultHigh : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT Divisorsito;
BEGIN
    suma : fullA10b PORT MAP('0' & Xi, '0' & Yi, aS, bS,'0', auxSalida1, auxC1, auxZ1, auxOv1, auxS1);
    resta : fullA10b PORT MAP('0' & Xi, '0' & Yi, aS, bS,'1', auxSalida2, auxC2, auxZ2, auxOv2, auxS2);
    mult : multP PORT MAP(Xi(4 DOWNTO 0), Yi(4 DOWNTO 0), aS, bS, auxSalida3, auxC3, auxOv3, auxZ3, auxS3);
    divi : Divisorsito PORT MAP(Xi, Yi, aS, bS, auxOv4, auxS4, auxZ4, auxSalida4, auxx);
    WITH selector SELECT Si <=
        auxSalida1 WHEN "00",
        auxSalida2 WHEN "01",
        auxSalida3 WHEN "10",
        "00" & auxSalida4(7 DOWNTO 0) WHEN "11";
    WITH selector SELECT C <=
        auxC1 WHEN "00",
        auxC2 WHEN "01",
        auxC3 WHEN "10",
        auxC4 WHEN "11";
    WITH selector SELECT Z <=
        auxZ1 WHEN "00",
        auxZ2 WHEN "01",
        auxZ3 WHEN "10",
        auxZ4 WHEN "11";
    WITH selector SELECT Ov <=
        auxOv1 WHEN "00",
        auxOv2 WHEN "01",
        auxOv3 WHEN "10",
        auxOv4 WHEN "11";
    WITH selector SELECT S <=
        auxS1 WHEN "00",
        auxS2 WHEN "01",
        auxS3 WHEN "10",
        auxS4 WHEN "11";
END ARCHITECTURE Beahvioral;