vlib work 
vdel -all
vlib work 

vlog matrix_mul.sv
vlog matrix_mul_tb.sv

vsim work.tb
run -all