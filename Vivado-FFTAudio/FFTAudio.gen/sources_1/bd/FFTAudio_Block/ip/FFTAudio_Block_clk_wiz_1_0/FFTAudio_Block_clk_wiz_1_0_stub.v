// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Wed Jun  9 15:10:59 2021
// Host        : HORIZON running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               r:/Users/Mitchell/Documents/Microarchitecture/FFTAudio/FFTAudio.gen/sources_1/bd/FFTAudio_Block/ip/FFTAudio_Block_clk_wiz_1_0/FFTAudio_Block_clk_wiz_1_0_stub.v
// Design      : FFTAudio_Block_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module FFTAudio_Block_clk_wiz_1_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule
