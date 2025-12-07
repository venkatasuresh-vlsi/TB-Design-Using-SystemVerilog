vlib work
vdel -all
vlib work

vlog packet_count.sv 

vsim work.tb -sv_seed random
run -all