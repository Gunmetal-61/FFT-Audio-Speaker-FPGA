#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2020.2.2 (64-bit)
#
# Filename    : FFTAudio_Block.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Wed Jun 09 15:10:24 -0700 2021
# SW Build 3118627 on Tue Feb  9 05:14:06 MST 2021
#
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved. 
#
# usage: FFTAudio_Block.sh [-help]
# usage: FFTAudio_Block.sh [-lib_map_path]
# usage: FFTAudio_Block.sh [-noclean_files]
# usage: FFTAudio_Block.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'FFTAudio_Block.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xpm microblaze_v11_0_4 xil_defaultlib lmb_v10_v3_0_11 lmb_bram_if_cntlr_v4_0_19 blk_mem_gen_v8_4_4 generic_baseblocks_v2_1_0 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_22 fifo_generator_v13_2_5 axi_data_fifo_v2_1_21 axi_crossbar_v2_1_23 axi_lite_ipif_v3_0_4 axi_intc_v4_1_15 xlconcat_v2_1_4 mdm_v3_2_19 lib_cdc_v1_0_2 proc_sys_reset_v5_0_13 lib_pkg_v1_0_2 lib_srl_fifo_v1_0_2 axi_uartlite_v2_0_26 interrupt_control_v3_1_4 axi_iic_v2_0_25 axi_gpio_v2_0_24 xlconstant_v1_1_7 util_vector_logic_v2_0_1)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "FFTAudio_Block.sh - Script generated by export_simulation (Vivado v2020.2.2 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xpm $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work microblaze_v11_0_4 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/9285/hdl/microblaze_v11_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_microblaze_0_1/sim/FFTAudio_Block_microblaze_0_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_v10_v3_0_11 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/c2ed/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_dlmb_v10_1/sim/FFTAudio_Block_dlmb_v10_1.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_ilmb_v10_1/sim/FFTAudio_Block_ilmb_v10_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_bram_if_cntlr_v4_0_19 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/0b98/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_dlmb_bram_if_cntlr_1/sim/FFTAudio_Block_dlmb_bram_if_cntlr_1.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_ilmb_bram_if_cntlr_1/sim/FFTAudio_Block_ilmb_bram_if_cntlr_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work blk_mem_gen_v8_4_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_lmb_bram_1/sim/FFTAudio_Block_lmb_bram_1.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_22 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_2_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_5 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_21 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_23 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xbar_1/sim/FFTAudio_Block_xbar_1.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_intc_v4_1_15 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/47b8/hdl/axi_intc_v4_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_microblaze_0_axi_intc_0/sim/FFTAudio_Block_microblaze_0_axi_intc_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xlconcat_v2_1_4 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_microblaze_0_xlconcat_0/sim/FFTAudio_Block_microblaze_0_xlconcat_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work mdm_v3_2_19 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/8715/hdl/mdm_v3_2_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_mdm_1_1/sim/FFTAudio_Block_mdm_1_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_clk_wiz_1_0/FFTAudio_Block_clk_wiz_1_0_clk_wiz.v" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_clk_wiz_1_0/FFTAudio_Block_clk_wiz_1_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_13 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_rst_clk_wiz_1_100M_0/sim/FFTAudio_Block_rst_clk_wiz_1_100M_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_pkg_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_srl_fifo_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_uartlite_v2_0_26 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/5edb/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_axi_uartlite_0_0/sim/FFTAudio_Block_axi_uartlite_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work interrupt_control_v3_1_4 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_iic_v2_0_25 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/1529/hdl/axi_iic_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_axi_iic_0_1/sim/FFTAudio_Block_axi_iic_0_1.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_gpio_v2_0_24 $vhdlan_opts \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_axi_gpio_0_0/sim/FFTAudio_Block_axi_gpio_0_0.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_conv_funs_pkg.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_proc_common_pkg.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_ipif_pkg.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_family_support.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_family.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_soft_reset.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/proc_common_v3_30_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_pselect_f.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_address_decoder.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_slave_attachment.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/interrupt_control_v2_01_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_interrupt_control.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/FFTAudio_Block_xadc_wiz_0_1_axi_lite_ipif.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/FFTAudio_Block_xadc_wiz_0_1_xadc_core_drp.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/FFTAudio_Block_xadc_wiz_0_1_axi_xadc.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xadc_wiz_0_1/FFTAudio_Block_xadc_wiz_0_1.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_axi_gpio_1_0/sim/FFTAudio_Block_axi_gpio_1_0.vhd" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_axi_gpio_2_0/sim/FFTAudio_Block_axi_gpio_2_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xlconstant_v1_1_7 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_xlconstant_0_0/sim/FFTAudio_Block_xlconstant_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work util_vector_logic_v2_0_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../FFTAudio.gen/sources_1/bd/FFTAudio_Block/ipshared/d0f7" \
    "$ref_dir/../../../bd/FFTAudio_Block/ip/FFTAudio_Block_reset_inv_0_2/sim/FFTAudio_Block_reset_inv_0_2.v" \
    "$ref_dir/../../../bd/FFTAudio_Block/sim/FFTAudio_Block.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.FFTAudio_Block xil_defaultlib.glbl -o FFTAudio_Block_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./FFTAudio_Block_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./FFTAudio_Block.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key FFTAudio_Block_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc FFTAudio_Block_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./FFTAudio_Block.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: FFTAudio_Block.sh [-help]\n\
Usage: FFTAudio_Block.sh [-lib_map_path]\n\
Usage: FFTAudio_Block.sh [-reset_run]\n\
Usage: FFTAudio_Block.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
