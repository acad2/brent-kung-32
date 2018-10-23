library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dyn_G is
	port(
		input_a : in std_logic;
		input_b : in std_logic;
		input_c : in std_logic;
		output_g : out std_logic
	);
end entity dyn_G;

architecture arc_with_delay of dyn_G is
	
begin
	output_g <= input_a or (input_b and input_c) after 194 ps;
end architecture arc_with_delay;
