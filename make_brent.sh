echo "anlaysing dyn_and.vhd"
ghdl -a dyn_and.vhd
echo "elaborating dynamic_and"
ghdl -e dyn_and
echo "analysing dyn_or.vhd"
ghdl -a dyn_or.vhd
echo "elaborating dyn_or"
ghdl -e dyn_or
echo "analysing pre processing_block.vhd"
ghdl -a pre_processing_block.vhd
echo "elaborating pre_processing_block"
ghdl -e pre_processing_block
echo "finished compiling blocks"
echo "analysing test bench for preprocessing block"
ghdl -a pre_processing_block_tb.vhd
ghdl -e pre_processing_block_tb
echo "finished compiling test bench"
echo "running simulation"
ghdl -r pre_processing_block_tb --vcd=test_pre_processing_block.vcd
echo "created wave form outputs for pre_processing block ------> test_preprocessing_block.vcd"
echo "analysing generate block"
ghdl -a generate_block.vhd