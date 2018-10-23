library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--this block will generate pi and gi for the first level
entity pre_processing_block is
	port(
		A : in std_logic_vector(31 downto 0);
		B : in std_logic_vector(31 downto 0);
		P : out std_logic_vector(31 downto 0);
		G : out STD_LOGIC_VECTOR(31 downto 0)
	);
end entity pre_processing_block;

architecture arc_generate of pre_processing_block is
component dyn_or is
	port(
		input_1_or : in std_logic;
		input_2_or : in std_logic;
		output_or : out std_logic
	);
end component dyn_or;

component dyn_and is
	port(
		input_1_and : in std_logic;
		input_2_and : in std_logic;
		output_and	: out std_logic
	);
end component dyn_and;
begin
	-- we are trying to make a 32 bit adder
	-- so looping from 0 to 31
	gen_pre: for i in 0 to 31 generate
	begin
		gen_px:component dyn_or
			port map(
				input_1_or => A(i),
				input_2_or => B(i),
				output_or => P(i)
			);
		gen_gx:component dyn_and
			port map(
				input_1_and => A(i),
				input_2_and => B(i),
				output_and => G(i)
			);
	end generate gen_pre;

	
end architecture arc_generate;
