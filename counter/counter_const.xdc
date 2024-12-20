#Zedboard Pin Assignment


set_property -dict { PACKAGE_PIN F22 IOSTANDARD LVCMOS33 } [get_ports{direction}];
set_property -dict { PACKAGE_PIN M15 IOSTANDARD LVCMOS33 } [get_ports{digit_selection_in}];
set_property -dict { PACKAGE_PIN U19 IOSTANDARD LVCMOS33 } [get_ports{reset}];
set_property -dict { PACKAGE_PIN T22 IOSTANDARD LVCMOS33 } [get_ports{led_result[0]}];
set_property -dict { PACKAGE_PIN T21 IOSTANDARD LVCMOS33 } [get_ports{led_result[1]}];
set_property -dict { PACKAGE_PIN U22 IOSTANDARD LVCMOS33 } [get_ports{led_result[2]}];
set_property -dict { PACKAGE_PIN U21 IOSTANDARD LVCMOS33 } [get_ports{led_result[3]}];
set_property -dict { PACKAGE_PIN Y9 IOSTANDARD LVCMOS33 } [get_ports{clk}];
#set_property -dict { PACKAGE_PIN  IOSTANDARD LVCMOS33 } [get_ports{}];


#Pmod pin assignment
set_property -dict { PACKAGE_PIN W8 IOSTANDARD LVCMOS33 } [get_ports{digit_selection_out}];
set_property -dict { PACKAGE_PIN Y11 IOSTANDARD LVCMOS33 } [get_ports{seven_segment[0]}];
set_property -dict { PACKAGE_PIN AA11 IOSTANDARD LVCMOS33 } [get_ports{seven_segment[1]}];
set_property -dict { PACKAGE_PIN Y10 IOSTANDARD LVCMOS33 } [get_ports{seven_segment[2]}];
set_property -dict { PACKAGE_PIN AA9 IOSTANDARD LVCMOS33 } [get_ports{seven_segment[3]}];
set_property -dict { PACKAGE_PIN W12 IOSTANDARD LVCMOS33 } [get_ports{seven_segment[4]}];
set_property -dict { PACKAGE_PIN W11 IOSTANDARD LVCMOS33 } [get_ports{seven_segment[5]}];
set_property -dict { PACKAGE_PIN V10 IOSTANDARD LVCMOS33 } [get_ports{seven_segment[6]}];
#set_property -dict { PACKAGE_PIN  IOSTANDARD LVCMOS33 } [get_ports{}];
