vlib work
vdel -all 
vlib work

vlog constraints.sv 

vsim work.tb -sv_seed random 
run -all