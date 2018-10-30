connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A6CA9EA"} -index 0
loadhw -hw C:/Users/sebasala/Desktop/Work/UART_test/UART_TEST1/UART_TEST1/UART_TEST1.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A6CA9EA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A6CA9EA"} -index 0
dow C:/Users/sebasala/Desktop/Work/UART_test/UART_TEST1/UART_TEST1/UART_TEST1.sdk/uart/Debug/uart.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A6CA9EA"} -index 0
con
