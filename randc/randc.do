vlib work
vdel -all
vlib work

vlog randc.sv 

vsim work.tb -sv_seed random 
run -all