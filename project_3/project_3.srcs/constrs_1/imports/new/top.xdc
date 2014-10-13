set_property IOSTANDARD LVDS [get_ports clk_pin_p]
set_property IOSTANDARD LVDS [get_ports clk_pin_n]
set_property IOSTANDARD LVCMOS18 [get_ports rst_pin]

set_property IOSTANDARD LVCMOS18 [get_ports not_empty]
set_property IOSTANDARD LVCMOS18 [get_ports en_proc]

set_property PACKAGE_PIN AK34 [get_ports clk_pin_p]
set_property PACKAGE_PIN AL34 [get_ports clk_pin_n]
set_property PACKAGE_PIN AV40 [get_ports rst_pin]
set_property PACKAGE_PIN AU38 [get_ports en_proc]
set_property PACKAGE_PIN AM39 [get_ports not_empty]

create_clock -period 7.640 -name clk -waveform {0.000 3.820} -add [get_ports clk_pin_p]




















