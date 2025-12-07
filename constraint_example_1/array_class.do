vlib work
vdel -all
vlib work

vlog array_class.sv 

vsim work.tb -sv_seed random
run -all