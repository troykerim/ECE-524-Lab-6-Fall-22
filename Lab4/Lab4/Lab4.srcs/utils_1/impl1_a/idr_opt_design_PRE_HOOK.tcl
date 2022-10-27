# this is included for flow repeatability reasons and can be dropped if precise reproduction or results is not required or there are design changes
opt_design -retarget -propconst -sweep 
implement_debug_core -quiet
implement_mig_cores -quiet
