LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY Divisorsito IS
    PORT (
        a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        aS, bS : IN STD_LOGIC;
        errorsig, sF, zF : OUT STD_LOGIC;
        resultLow, resultHigh : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY Divisorsito;
ARCHITECTURE Behavioral OF Divisorsito IS
    --procedure fulladder
    -- PROCEDURE fulladder (a, b, cin : IN STD_LOGIC; sum, cout : OUT STD_LOGIC) IS
    --     VARIABLE suma : STD_LOGIC;
    --     VARIABLE couta : STD_LOGIC;
    -- BEGIN
    --     suma := a XOR b XOR cin;
    --     couta := (a AND b) OR (cin AND (a XOR b));
    -- END PROCEDURE fulladder;
BEGIN
    Div : PROCESS (a, b)
        -- PROCEDURE adder (a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0); sump : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)) IS
        --     VARIABLE sumpp : STD_LOGIC_VECTOR(7 DOWNTO 0);
        --     VARIABLE carryout : STD_LOGIC_VECTOR(7 DOWNTO 0);
        -- BEGIN
        --     fulladder(a(0), b(0) XOR '1', '1', sumpp(0), carryout(0));
        --     fulladder(a(1), b(1) XOR '1', carryout(0), sumpp(1), carryout(1));
        --     fulladder(a(2), b(2) XOR '1', carryout(1), sumpp(2), carryout(2));
        --     fulladder(a(3), b(3) XOR '1', carryout(2), sumpp(3), carryout(3));
        --     fulladder(a(4), b(4) XOR '1', carryout(3), sumpp(4), carryout(4));
        --     fulladder(a(5), b(5) XOR '1', carryout(4), sumpp(5), carryout(5));
        --     fulladder(a(6), b(6) XOR '1', carryout(5), sumpp(6), carryout(6));
        --     fulladder(a(7), b(7) XOR '1', carryout(6), sumpp(7), carryout(7));
        -- END PROCEDURE adder;
        VARIABLE quotient : unsigned(7 DOWNTO 0);
        VARIABLE remainderr : unsigned(7 DOWNTO 0);
    BEGIN
        errorsig <= '0';
        IF b = "0000" THEN
            errorsig <= '1';
        ELSE
            quotient := (OTHERS => '0');
            remainderr := (OTHERS => '0');
            FOR i IN 7 DOWNTO 0 LOOP
                remainderr := remainderr(6 DOWNTO 0) & '0';
                remainderr(0) := a(i);
                IF remainderr >= unsigned(b) THEN
                    --adder(remainderr, b, remainderr);
                    remainderr := remainderr - unsigned(b);
                    quotient(i) := '1';
                END IF;
            END LOOP;
        END IF;
        resultLow <= STD_LOGIC_VECTOR(quotient);
        resultHigh <= STD_LOGIC_VECTOR(remainderr);
        sF <= aS XOR bS;
        if (quotient = (OTHERS => '0')) then
            zF <= '1';
        else
            zF <= '0';
        end if;
    END PROCESS Div;
    --compa1 : comparador4 PORT MAP(a, b, '0', '0', gttp, eqqp, lttp);

    --resta1 : fullA10b PORT MAP(z_reg(16 DOWNTO 12), b(4 DOWNTO 0), '1', sub(5 DOWNTO 0), cf, zf, ovf, sf);
    --salidas
END ARCHITECTURE Behavioral;