vlib work
vdel -all
vlib work

vlog odd_even.sv 

vsim work.tb -sv_seed random
run -all