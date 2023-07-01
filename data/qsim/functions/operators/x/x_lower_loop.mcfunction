function qsim:operators/x/x_setidx

#loopを続けるか判定
scoreboard players add x_lower_loop qubits 1
execute if score x_lower_loop qubits < x_lower qubits run function qsim:operators/x/x_lower_loop