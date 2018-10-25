library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dyn_and is
	port(
		input_1_and : in std_logic;
		input_2_and : in std_logic;
		output_and	: out std_logic
		
	);
end entity dyn_and;

architecture arc_with_delay of dyn_and is
	
begin
	output_and <= input_1_and and input_2_and after 175 ps;
end architecture arc_with_delay;
