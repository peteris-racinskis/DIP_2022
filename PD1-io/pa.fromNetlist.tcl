
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name PD1-io -dir "/home/user/repos/DIP_2022/PD1-io/planAhead_run_4" -part xc6slx45csg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/user/repos/DIP_2022/PD1-io/logic.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/user/repos/DIP_2022/PD1-io} }
set_property target_constrs_file "logic.ucf" [current_fileset -constrset]
add_files [list {logic.ucf}] -fileset [get_property constrset [current_run]]
link_design
