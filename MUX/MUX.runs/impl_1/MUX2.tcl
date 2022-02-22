# 
# Report generation script generated by Vivado
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
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7a35tcpg236-1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/MUX.cache/wt [current_project]
  set_property parent.project_path C:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/MUX.xpr [current_project]
  set_property ip_output_repo C:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/MUX.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
<<<<<<< HEAD:MUX/MUX.runs/impl_1/MUX2.tcl
  add_files -quiet C:/Users/dlg59/Documents/GitHub/MUX/MUX.runs/synth_1/MUX2.dcp
  read_xdc C:/Users/dlg59/Documents/GitHub/MUX/Basys3_MUX.xdc
  link_design -top MUX2 -part xc7a35tcpg236-1
=======
  add_files -quiet C:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/MUX.runs/synth_1/MUX.dcp
  read_xdc C:/Users/danie/OneDrive/Documents/Basys3-Verilog/MUX/Basys3_MUX.xdc
  link_design -top MUX -part xc7a35tcpg236-1
>>>>>>> 9cdb202b445d71ce2b90bcb1afc18a481d5d0d5c:MUX/MUX.runs/impl_1/MUX3.tcl
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
<<<<<<< HEAD:MUX/MUX.runs/impl_1/MUX2.tcl
  write_checkpoint -force MUX2_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file MUX2_drc_opted.rpt -pb MUX2_drc_opted.pb -rpx MUX2_drc_opted.rpx"
=======
  write_checkpoint -force MUX_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file MUX_drc_opted.rpt -pb MUX_drc_opted.pb -rpx MUX_drc_opted.rpx"
>>>>>>> 9cdb202b445d71ce2b90bcb1afc18a481d5d0d5c:MUX/MUX.runs/impl_1/MUX3.tcl
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
<<<<<<< HEAD:MUX/MUX.runs/impl_1/MUX2.tcl
  write_checkpoint -force MUX2_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file MUX2_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file MUX2_utilization_placed.rpt -pb MUX2_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -verbose -file MUX2_control_sets_placed.rpt"
=======
  write_checkpoint -force MUX_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file MUX_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file MUX_utilization_placed.rpt -pb MUX_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -verbose -file MUX_control_sets_placed.rpt"
>>>>>>> 9cdb202b445d71ce2b90bcb1afc18a481d5d0d5c:MUX/MUX.runs/impl_1/MUX3.tcl
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
<<<<<<< HEAD:MUX/MUX.runs/impl_1/MUX2.tcl
  write_checkpoint -force MUX2_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file MUX2_drc_routed.rpt -pb MUX2_drc_routed.pb -rpx MUX2_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file MUX2_methodology_drc_routed.rpt -pb MUX2_methodology_drc_routed.pb -rpx MUX2_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file MUX2_power_routed.rpt -pb MUX2_power_summary_routed.pb -rpx MUX2_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file MUX2_route_status.rpt -pb MUX2_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file MUX2_timing_summary_routed.rpt -rpx MUX2_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file MUX2_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file MUX2_clock_utilization_routed.rpt"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force MUX2_routed_error.dcp
=======
  write_checkpoint -force MUX_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file MUX_drc_routed.rpt -pb MUX_drc_routed.pb -rpx MUX_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file MUX_methodology_drc_routed.rpt -pb MUX_methodology_drc_routed.pb -rpx MUX_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file MUX_power_routed.rpt -pb MUX_power_summary_routed.pb -rpx MUX_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file MUX_route_status.rpt -pb MUX_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file MUX_timing_summary_routed.rpt -rpx MUX_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file MUX_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file MUX_clock_utilization_routed.rpt"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force MUX_routed_error.dcp
>>>>>>> 9cdb202b445d71ce2b90bcb1afc18a481d5d0d5c:MUX/MUX.runs/impl_1/MUX3.tcl
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
<<<<<<< HEAD:MUX/MUX.runs/impl_1/MUX2.tcl
  catch { write_mem_info -force MUX2.mmi }
  write_bitstream -force MUX2.bit 
  catch {write_debug_probes -quiet -force MUX2}
  catch {file copy -force MUX2.ltx debug_nets.ltx}
=======
  catch { write_mem_info -force MUX.mmi }
  write_bitstream -force MUX.bit 
  catch {write_debug_probes -quiet -force MUX}
  catch {file copy -force MUX.ltx debug_nets.ltx}
>>>>>>> 9cdb202b445d71ce2b90bcb1afc18a481d5d0d5c:MUX/MUX.runs/impl_1/MUX3.tcl
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}
