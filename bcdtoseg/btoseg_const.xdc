#Zedboard Pin Assignment

set_property -dict { PACKAGE_PIN F22 IOSTANDARD LVCMOS33 } [get_ports{digit[0]}];
set_property -dict { PACKAGE_PIN G22 IOSTANDARD LVCMOS33 } [get_ports{digit[1]}];
set_property -dict { PACKAGE_PIN H22 IOSTANDARD LVCMOS33 } [get_ports{digit[2]}];
set_property -dict { PACKAGE_PIN F21 IOSTANDARD LVCMOS33 } [get_ports{digit[3]}];
set_property -dict { PACKAGE_PIN H19 IOSTANDARD LVCMOS33 } [get_ports{leftrightin}];

#Pmod Pin Assignment

set_property -dict { PACKAGE_PIN Y11 IOSTANDARD LVCMOS33 } [get_ports{seg[0]}];
set_property -dict { PACKAGE_PIN AA11 IOSTANDARD LVCMOS33 } [get_ports{seg[1]}];
set_property -dict { PACKAGE_PIN Y10 IOSTANDARD LVCMOS33 } [get_ports{seg[2]}];
set_property -dict { PACKAGE_PIN AA9 IOSTANDARD LVCMOS33 } [get_ports{seg[3]}];
set_property -dict { PACKAGE_PIN W12 IOSTANDARD LVCMOS33 } [get_ports{seg[4]}];
set_property -dict { PACKAGE_PIN W11 IOSTANDARD LVCMOS33 } [get_ports{seg[5]}];
set_property -dict { PACKAGE_PIN V10 IOSTANDARD LVCMOS33 } [get_ports{seg[6]}];
set_property -dict { PACKAGE_PIN W8 IOSTANDARD LVCMOS33 } [get_ports{leftrightout}];
