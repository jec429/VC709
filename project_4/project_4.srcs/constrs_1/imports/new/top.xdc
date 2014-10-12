set_property IOSTANDARD LVDS [get_ports clk_pin_p]
set_property IOSTANDARD LVDS [get_ports clk_pin_n]
set_property IOSTANDARD LVCMOS18 [get_ports rst_pin]
set_property IOSTANDARD LVCMOS18 [get_ports {not_empty[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {not_empty[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {not_empty[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {not_empty[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {not_empty[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {not_empty[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {not_empty[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {not_empty[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports en_proc]

set_property PACKAGE_PIN AK34 [get_ports clk_pin_p]
set_property PACKAGE_PIN AL34 [get_ports clk_pin_n]
set_property PACKAGE_PIN AV40 [get_ports rst_pin]
set_property PACKAGE_PIN AU38 [get_ports en_proc]
set_property PACKAGE_PIN AM39 [get_ports {not_empty[0]}]
set_property PACKAGE_PIN AN39 [get_ports {not_empty[1]}]
set_property PACKAGE_PIN AR37 [get_ports {not_empty[2]}]
set_property PACKAGE_PIN AT37 [get_ports {not_empty[3]}]
set_property PACKAGE_PIN AR35 [get_ports {not_empty[4]}]
set_property PACKAGE_PIN AP41 [get_ports {not_empty[5]}]
set_property PACKAGE_PIN AP42 [get_ports {not_empty[6]}]
set_property PACKAGE_PIN AU39 [get_ports {not_empty[7]}]


create_clock -period 1.538 -name clk -waveform {0.000 0.769} -add [get_ports clk_pin_p]








