-----------------------------------------------------------------------------------------------------------------------
-- (C) Copyright 2012 <Company Name> All Rights Reserved
--
-- ENTITY:    generate_block
-- DEVICE:
-- PROJECT:
-- AUTHOR:    aswinp2008
-- DATE:      2018 3:20:57 PM
--
-- ABSTRACT:  You can customize the file content form Templates "VHDL File"
--
-----------------------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--this block will generate the intermediate pi and gi for the calculation of carry 

entity generate_block is
	port(
		input_g_0  : IN STD_LOGIC_VECTOR(31 downto 0);
		input_p_0  : IN STD_LOGIC_VECTOR(31 downto 0);
		output_g_1 : OUT STD_LOGIC_VECTOR(15 downto 0);
		output_p_1 : OUT STD_LOGIC_VECTOR(15 downto 0)
		
	);
end entity generate_block;

architecture arc_brute of generate_block is
--trying to make the first intermediate stage 
begin
	gen_first_int: for  i in 0 to 15 generate
begin
	gen_px : entity work.dyn_and
		port map(input_1_and <= input_p_0(i),
				input_2_and 	<= input_p_0(i + 1),
				output_and 	<= output_p_1(i)
			
		);
	gen_gx: entity work.dyn_G
		port map( 	input_a <= input_g_0(i+1),
					input_b <= input_g_0(i),
					input_c <= input_p_0(i)
		);
	end generate gen_first_int;
end architecture arc_brute;

-----------------------------------------------------------------------------------------------------------------------
--
-- REVISION HISTORY:
--
-----------------------------------------------------------------------------------------------------------------------
