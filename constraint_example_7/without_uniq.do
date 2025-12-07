vlib work
vdel -all
vlib work 

vlog without_uniq.sv 

vsim work.tb -sv_seed random
run -all