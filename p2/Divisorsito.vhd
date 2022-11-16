LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY Divisorsito IS
    PORT (
        a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        errorsig : OUT STD_LOGIC;
        resultLow, resultHigh : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY Divisorsito;
ARCHITECTURE Behavioral OF Divisorsito IS
BEGIN
    Div : PROCESS (a, b)
        VARIABLE quotient : unsigned(7 DOWNTO 0);
        VARIABLE remainderr : unsigned(7 DOWNTO 0);
    BEGIN
        errorsig <= '0';
        IF b = "0000" THEN
            errorsig <= '1';
        ELSE
            quotient := (OTHERS => '0');
            remainderr := (OTHERS => '0');
            FOR i IN 3 DOWNTO 0 LOOP
                remainderr := remainderr(6 DOWNTO 0) & '0';
                remainderr(0) := a(i);
                IF remainderr >= unsigned(b) THEN
                    remainderr := remainderr - unsigned(b);
                    quotient(i) := '1';
                END IF;
            END LOOP;
        END IF;
        resultLow <= STD_LOGIC_VECTOR(quotient);
        resultHigh <= STD_LOGIC_VECTOR(remainderr);
    END PROCESS Div;
    --compa1 : comparador4 PORT MAP(a, b, '0', '0', gttp, eqqp, lttp);

    --resta1 : fullA10b PORT MAP(z_reg(16 DOWNTO 12), b(4 DOWNTO 0), '1', sub(5 DOWNTO 0), cf, zf, ovf, sf);
    --salidas
END ARCHITECTURE Behavioral;