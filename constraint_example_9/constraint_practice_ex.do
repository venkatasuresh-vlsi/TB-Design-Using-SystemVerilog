vlib work 
vdel -all
vlib work 

vlog constraint_practice_ex.sv 

vsim work.tb -sv_seed random
run -all