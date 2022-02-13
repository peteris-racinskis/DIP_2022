
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name PD1-io -dir "/home/user/repos/DIP_2022/PD1-io/planAhead_run_3" -part xc6slx45csg484-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "logic.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {logic.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top logic $srcset
add_files [list {logic.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45csg484-3
