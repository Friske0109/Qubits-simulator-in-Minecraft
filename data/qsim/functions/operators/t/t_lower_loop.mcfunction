function qsim:operators/t/t_setidx

#loopを続けるか判定
scoreboard players add t_lower_loop qubits 1
execute if score t_lower_loop qubits < t_lower qubits run function qsim:operators/t/t_lower_loop