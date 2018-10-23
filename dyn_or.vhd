library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dyn_or is
	port(
		input_1_or : in std_logic;
		input_2_or : in std_logic;
		output_or : out std_logic
	);
end entity dyn_or;
	
architecture arc_with_delay of dyn_or is
	
begin
	output_or <= input_1_or or input_2_or after 185 ps; 
	--this is the delay calculated from layout which account for parasitics
	
end architecture arc_with_delay;
