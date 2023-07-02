function qsim:operators/ccx/ccx_setidx

#loopを続けるか判定
scoreboard players add ccx_lower_loop qubits 1
execute if score ccx_lower_loop qubits < ccx_lower qubits run function qsim:operators/ccx/ccx_lower_loop