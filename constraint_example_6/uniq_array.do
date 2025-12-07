vlib work
vdel -all
vlib work 

vlog uniq_array.sv 

vsim work.tb -sv_seed random
run -all