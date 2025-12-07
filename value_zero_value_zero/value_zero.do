vlib work
vdel -all
vlib work 

vlog value_zero.sv 

vsim work.top -sv_seed random 
run -all