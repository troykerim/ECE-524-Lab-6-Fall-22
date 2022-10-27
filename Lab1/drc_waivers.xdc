# 
# WRITE DRC WAIVERS 
# cmd: write_waivers -type DRC drc_waivers.xdc
current_instance -quiet
create_waiver -type DRC -id {UCIO-1} -user "troy" -desc "Waive UCIO DRC violations" -objects [get_ports { refclk0n tx_start_of_frame[0] s_axi_rdata[24] s_axi_wdata[24] s_axi_rdata[14] s_axi_wdata[15] s_axi_bvalid glblclkn tx_reset drpclk tx_start_of_multiframe[3] tx_start_of_frame[3] tx_start_of_frame[2] tx_start_of_frame[1] tx_start_of_multiframe[1] txp[3] txp[2] txp[1] txp[0] txn[4] txn[3] txn[2] txn[1] txn[0] s_axi_aclk s_axi_aresetn s_axi_awaddr[11] s_axi_awaddr[10] s_axi_awaddr[9] s_axi_awaddr[8] s_axi_awaddr[7] s_axi_awaddr[6] s_axi_awaddr[5] s_axi_awaddr[4] s_axi_awaddr[3] s_axi_awaddr[2] s_axi_awvalid s_axi_awready s_axi_wdata[28] s_axi_wdata[27] s_axi_wdata[26] s_axi_wdata[25] s_axi_wdata[20] s_axi_wdata[18] s_axi_wdata[17] s_axi_wdata[16] s_axi_wdata[14] s_axi_wdata[13] s_axi_wdata[12] s_axi_wdata[11] s_axi_wdata[10] s_axi_wdata[9] s_axi_wdata[8] s_axi_wdata[7] s_axi_wdata[6] s_axi_wdata[5] s_axi_wdata[4] s_axi_wdata[3] s_axi_wdata[2] s_axi_wdata[1] s_axi_wdata[0] s_axi_araddr[11] s_axi_wstrb[3] s_axi_wstrb[2] s_axi_wstrb[0] s_axi_wvalid s_axi_wready s_axi_bresp[1] s_axi_bresp[0] s_axi_bready s_axi_araddr[9] s_axi_araddr[8] s_axi_araddr[7] s_axi_araddr[5] s_axi_araddr[4] s_axi_araddr[3] s_axi_araddr[2] s_axi_arvalid s_axi_arready s_axi_rdata[31] s_axi_rdata[30] s_axi_rdata[29] s_axi_rdata[28] s_axi_rdata[27] s_axi_rdata[26] s_axi_rdata[25] s_axi_rdata[23] s_axi_rdata[21] s_axi_rdata[20] s_axi_rdata[19] s_axi_rdata[18] s_axi_rdata[17] s_axi_rdata[16] s_axi_rdata[15] s_axi_rdata[13] s_axi_rdata[12] s_axi_rdata[11] s_axi_rdata[10] s_axi_rdata[9] s_axi_rdata[8] s_axi_rdata[6] s_axi_rdata[5] s_axi_rdata[4] s_axi_rdata[3] s_axi_rdata[2] s_axi_rdata[1] s_axi_rdata[0] s_axi_rresp[1] s_axi_rresp[0] s_axi_rvalid s_axi_rready tx_aresetn tx_sysref tx_sync s_axi_rdata[7] s_axi_wdata[19] s_axi_wstrb[1] s_axi_araddr[10] tx_start_of_multiframe[0] refclk0p tx_start_of_multiframe[2] glblclkp s_axi_rdata[22] s_axi_araddr[6] txp[4] }] -strings { "*" } -strings { "*" } -timestamp "Sun Oct 23 19:40:09 GMT 2022" ;#1
# 
current_instance -quiet