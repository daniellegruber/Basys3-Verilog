# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
<<<<<<< HEAD:Lab3_7segment/Lab3_7segment.runs/synth_1/Main.tcl
set_property webtalk.parent_dir C:/Users/dlg59/Documents/GitHub/Lab3_7segment/Lab3_7segment.cache/wt [current_project]
set_property parent.project_path C:/Users/dlg59/Documents/GitHub/Lab3_7segment/Lab3_7segment.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/dlg59/Documents/GitHub/Lab3_7segment/Lab3_7segment.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/dlg59/Documents/GitHub/Lab3_7segment/Lab3_7segment.srcs/sources_1/new/Lab3_7segment.v
=======
set_property webtalk.parent_dir C:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/MUX.cache/wt [current_project]
set_property parent.project_path C:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/MUX.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/MUX.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/MUX.srcs/sources_1/new/MUX.v
>>>>>>> 9cdb202b445d71ce2b90bcb1afc18a481d5d0d5c:MUX/MUX.runs/synth_1/MUX.tcl
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
<<<<<<< HEAD:Lab3_7segment/Lab3_7segment.runs/synth_1/Main.tcl
read_xdc C:/Users/dlg59/Documents/GitHub/Lab3_7segment/Basys3_7segment.xdc
set_property used_in_implementation false [get_files C:/Users/dlg59/Documents/GitHub/Lab3_7segment/Basys3_7segment.xdc]
=======
read_xdc C:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/Basys3_MUX.xdc
set_property used_in_implementation false [get_files C:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/Basys3_MUX.xdc]
>>>>>>> 9cdb202b445d71ce2b90bcb1afc18a481d5d0d5c:MUX/MUX.runs/synth_1/MUX.tcl


synth_design -top Main -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Main.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Main_utilization_synth.rpt -pb Main_utilization_synth.pb"