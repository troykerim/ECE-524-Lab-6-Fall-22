# 
# WRITE CDC Waivers
# cmd: write_waivers -type cdc waivers.xdc
current_instance -quiet
create_waiver -type CDC -id {CDC-10} -user "troy" -desc "This is a safe CDC per review with the team" -from [get_pins i_my_ip_support_block/jesd204_i/inst/i_my_ip/i_tx/i_tx_counters_32/got_sysref_r_reg/C] -to [get_pins {i_my_ip_support_block/jesd204_i/inst/sync_tx_sysref_captured/syncstages_ff_reg[0]/D}] -timestamp "Sun Oct 23 19:17:10 GMT 2022" ;#1
create_waiver -type CDC -id {CDC-11} -user "troy" -desc "Safe fanout. Circuitry has been reviewed" -from [get_pins {i_my_ip_support_block/jesd204_i/inst/i_my_ip_reset_block/stretch_reg[10]/C}] -to [get_pins {i_my_ip_support_block/i_jesd204_phy/inst/jesd204_phy_block_i/sync_rx_reset_data/xpm_cdc_async_rst_inst/arststages_ff_reg[0]/CLR}] -timestamp "Sun Oct 23 19:24:46 GMT 2022" ;#1
create_waiver -type CDC -id {CDC-11} -user "troy" -desc "Safe fanout. Circuitry has been reviewed" -from [get_pins {i_my_ip_support_block/jesd204_i/inst/i_my_ip_reset_block/stretch_reg[10]/C}] -to [get_pins {i_my_ip_support_block/i_jesd204_phy/inst/jesd204_phy_block_i/sync_tx_reset_data/xpm_cdc_async_rst_inst/arststages_ff_reg[0]/CLR}] -timestamp "Sun Oct 23 19:24:46 GMT 2022" ;#2
# 
current_instance -quiet
