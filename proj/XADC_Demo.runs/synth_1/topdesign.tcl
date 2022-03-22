# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/download/FPGA/XADC_Demo/proj/XADC_Demo.cache/wt [current_project]
set_property parent.project_path E:/download/FPGA/XADC_Demo/proj/XADC_Demo.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths e:/download/FPGA/XADC_Demo/repo [current_project]
add_files -quiet e:/download/FPGA/XADC_Demo/src/ip/xadc_wiz_0_1/xadc_wiz_0.dcp
set_property used_in_implementation false [get_files e:/download/FPGA/XADC_Demo/src/ip/xadc_wiz_0_1/xadc_wiz_0.dcp]
read_ip -quiet E:/download/FPGA/XADC_Demo/src/ip/xadc_wiz_0_1/xadc_wiz_0.xci
set_property used_in_implementation false [get_files -all e:/download/FPGA/XADC_Demo/src/ip/xadc_wiz_0_1/xadc_wiz_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/download/FPGA/XADC_Demo/src/ip/xadc_wiz_0_1/xadc_wiz_0.xdc]
set_property is_locked true [get_files E:/download/FPGA/XADC_Demo/src/ip/xadc_wiz_0_1/xadc_wiz_0.xci]

read_verilog -library xil_defaultlib {
  E:/download/FPGA/XADC_Demo/src/hdl/XADCdemo.v
  E:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/download/FPGA/XADC_Demo/src/constraints/Basys3_Master.xdc
set_property used_in_implementation false [get_files E:/download/FPGA/XADC_Demo/src/constraints/Basys3_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top topdesign -part xc7a35tcpg236-1 -fanout_limit 400 -fsm_extraction one_hot -keep_equivalent_registers -resource_sharing off -no_lc -shreg_min_size 5


write_checkpoint -force -noxdef topdesign.dcp

catch { report_utilization -file topdesign_utilization_synth.rpt -pb topdesign_utilization_synth.pb }
