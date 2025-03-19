#时序约束
create_clock -period 20.000 -name sys_clk [get_ports i_clk]

#IO引脚约束
#------------------------------系统时钟和复�?-----------------------------------
set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports i_clk]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports i_rst_n]


#-----------------------------------UART----------------------------------------
set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports i_uart_rx]
set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVCMOS33} [get_ports o_uart_tx]


#--------------------------------HDMI_A-----------------------------------------
#create_clock -period 6.000 -name i_tmds_clk_p [get_ports i_tmds_clk_p]
set_property IOSTANDARD TMDS_33 [get_ports i_tmds_clk_n]
set_property -dict {PACKAGE_PIN C18 IOSTANDARD TMDS_33} [get_ports i_tmds_clk_p]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD TMDS_33} [get_ports {i_tmds_data_p[0]}]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD TMDS_33} [get_ports {i_tmds_data_p[1]}]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD TMDS_33} [get_ports {i_tmds_data_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {i_tmds_data_n[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {i_tmds_data_n[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {i_tmds_data_n[2]}]

