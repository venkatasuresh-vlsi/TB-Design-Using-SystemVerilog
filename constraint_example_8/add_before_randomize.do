vlib work
vdel -all
vlib work 

vlog add_before_randomize.sv 

vsim work.top  -sv_seed random
run -all