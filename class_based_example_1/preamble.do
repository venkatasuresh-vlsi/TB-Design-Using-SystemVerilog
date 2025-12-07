vlib work
vdel -all
vlib work

vlog preamble.sv 

vsim work.tb -sv_seed random
run -all