library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pre_processing_block_tb is
end entity pre_processing_block_tb;

architecture arc_test_bench of pre_processing_block_tb is
	component pre_processing_block is
	port(
		A : in std_logic_vector(31 downto 0);
		B : in std_logic_vector(31 downto 0);
		P : out std_logic_vector(31 downto 0);
		G : out STD_LOGIC_VECTOR(31 downto 0)
	);
end component pre_processing_block;

signal sig_A ,sig_B ,sig_P ,sig_G : std_logic_vector(31 downto 0);

begin
	U1 : pre_processing_block
		port map(
			A => sig_A,
			B => sig_B,
			P => sig_P,
			G => sig_G
		);
	process
	begin
		sig_A <= x"00000000";
		sig_B <= x"FFFFFFFF";
		wait for 1 ns;
		sig_A <= x"000F0000";
		sig_B <= x"FFFF0000";
		wait for 1 ns;
		sig_A <= x"00F00000";
		sig_B <= x"FFFFAAAA";
		wait for 1 ns;
		wait;
	end process;	
end architecture arc_test_bench;
