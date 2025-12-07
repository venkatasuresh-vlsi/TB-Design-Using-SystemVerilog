vlib work
vdel -all
vlib work

vlog transaction.sv 

vsim work.tb -sv_seed random
run -all 