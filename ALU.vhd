library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use WORK.Sys_Definition.ALL;

entity ALU is
    Port ( OPr1 : in STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
	OPr2 : in std_logic_vector (DATA_WIDTH - 1 downto 0);
	ALUs : in std_logic_vector(1 downto 0);
	ALUr : out std_logic_vector(DATA_WIDTH - 1 downto 0);
	ALUz : out std_logic;
	ALUeq: out std_logic;
	ALUgt : out std_logic
	);
end ALU;
architecture ALU of ALU is
signal result : STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
begin
    process(ALUs, Opr1, Opr2)
    begin
        case(ALUs) is
            when "00" =>
                result <= OPr1 + OPr2;
            when "01" =>
                result <= OPr1 - OPr2;
            when "10" =>
                result <= OPr1 or OPr2;
            when "11" =>
                result <= OPr1 and OPr2;
            when others =>
                result <= (others => '1');
        end case;
    end process;
    ALUr <= result;
    ALUz <= '1' when OPr1 = x"0000" else '0';
    ALUeq <= '1' when OPr1 = OPr2 else '0';
    ALugt <= '1' when OPr1 > OPr2 else '0';
end ALU;
