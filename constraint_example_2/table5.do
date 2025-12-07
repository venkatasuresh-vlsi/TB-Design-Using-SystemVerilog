vlib work
vdel -all
vlib work

vlog table5.sv 

vsim work.tb -sv_seed random
run -all