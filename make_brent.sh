ghdl -a dyn_and.vhd
ghdl -e dyn_and
ghdl -a dyn_or.vhd
ghdl -e dyn_or
ghdl -a pre_processing_block.vhd
ghdl -e pre_processing_block
echo "finished compiling blocks"
ghdl -a pre_processing_block_tb.vhd
ghdl -e pre_processing_block_tb
echo "finished compiling test bench"
echo "running simulation"
ghdl -r pre_processing_block_tb --vcd=outfile
gtkwave outfile
