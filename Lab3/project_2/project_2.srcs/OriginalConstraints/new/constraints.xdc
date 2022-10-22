create_clock -period 10.000 -name clkin [get_ports clkin]

set_property PACKAGE_PIN AN9 [get_ports {data_in_600[1]}]
set_property PACKAGE_PIN AP9 [get_ports clkin]
set_property PACKAGE_PIN AT11 [get_ports locked]
set_property PACKAGE_PIN H33 [get_ports {data_in_300[0]}]
set_property PACKAGE_PIN B30 [get_ports {data_out_300[0]}]
set_property PACKAGE_PIN AN10 [get_ports {data_in_600[0]}]
set_property PACKAGE_PIN AM10 [get_ports {data_in_600[2]}]
set_property PACKAGE_PIN AP11 [get_ports {data_out_600[0]}]


create_pblock pblock_sync_cdc
add_cells_to_pblock [get_pblocks pblock_sync_cdc] [get_cells -quiet [list clk300_to_clk600_ffs_i clk600_to_clk300_ffs_i]]
resize_pblock [get_pblocks pblock_sync_cdc] -add {CLOCKREGION_X0Y0:CLOCKREGION_X0Y0}

set_property BLOCK_SYNTH.PRESERVE_BOUNDARY 1 [get_cells clk300_to_clk600_ffs_i]
set_property BLOCK_SYNTH.PRESERVE_BOUNDARY 1 [get_cells clk600_to_clk300_ffs_i]