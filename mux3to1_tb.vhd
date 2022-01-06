library IEEE;
use IEEE.std_logic_1164.all;
use work.Sys_Definition.all;

entity mux3to1_tb is
end mux3to1_tb;

architecture test of mux3to1_tb is
COMPONENT mux3to1
	--generic(
	--DATA_WIDTH : integer := 0);
	PORT (
	data_in0,data_in1,data_in2: IN  std_logic_vector(7 downto 0);
	SEL : IN std_logic_vector(1 downto 0);
	data_out: OUT std_logic_vector (7 downto 0)
	);
END COMPONENT;
signal in0, in1, in2 : std_logic_vector(7 downto 0);
signal sel : std_logic_vector(1 downto 0);
signal data_out : std_logic_vector(7 downto 0);
begin 
	DUT: mux3to1
	PORT MAP(
		data_in0 => in0,
		data_in1 => in1,
		data_in2 => in2,
		SEL => sel,
		data_out => data_out);
testing: process
	begin
	in0 <= "00000000";
	in1 <= "00000001";
	in2 <= "00000010";
	sel <= "00";
	wait for 10ns;
	sel <= "01";
	wait for 10ns;
	sel <= "10";
	wait for 10ns;
	sel <= "11";
	wait for 10ns;
	end process testing;
end test;