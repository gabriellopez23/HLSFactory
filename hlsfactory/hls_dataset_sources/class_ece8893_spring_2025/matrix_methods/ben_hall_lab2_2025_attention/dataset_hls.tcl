open_project compute_attention_HLS_design

# set top function of the HLS design
set_top compute_attention_HLS

# add source file
add_files top.cpp

# add testbench
add_files -tb host.cpp

# add data file
add_files -tb Q_tensor.bin
add_files -tb V_tensor.bin
add_files -tb K_tensor.bin
add_files -tb Output_tensor.bin

open_solution "solution2"

# FPGA part and clock configuration
set_part {xczu3eg-sbva484-1-e}

# C synthesis for HLS design, generating RTL
csynth_design

exit
