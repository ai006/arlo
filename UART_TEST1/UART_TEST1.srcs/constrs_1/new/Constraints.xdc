#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { sys_clk }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
set_property PACKAGE_PIN N15 [get_ports uart_rtl_rxd]
set_property PACKAGE_PIN L14 [get_ports uart_rtl_txd]

set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_txd]
