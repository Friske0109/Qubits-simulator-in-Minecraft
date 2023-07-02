function qsim:operators/h/h_setidx

#loopを続けるか判定
scoreboard players add h_lower_loop qubits 1
execute if score h_lower_loop qubits < h_lower qubits run function qsim:operators/h/h_lower_loop