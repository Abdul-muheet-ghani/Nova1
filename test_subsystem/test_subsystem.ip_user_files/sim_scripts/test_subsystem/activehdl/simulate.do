onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+test_subsystem -L xpm -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_23 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_24 -L axi_protocol_converter_v2_1_24 -L axi_clock_converter_v2_1_23 -L blk_mem_gen_v8_4_4 -L axi_dwidth_converter_v2_1_24 -L xil_defaultlib -L axi_crossbar_v2_1_25 -L axi_jtag_v1_0_0 -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_uartlite_v2_0_28 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.test_subsystem xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {test_subsystem.udo}

run -all

endsim

quit -force
