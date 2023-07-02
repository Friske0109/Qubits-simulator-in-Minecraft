function qsim:operators/td/td_setidx

#loopを続けるか判定
scoreboard players add td_lower_loop qubits 1
execute if score td_lower_loop qubits < td_lower qubits run function qsim:operators/td/td_lower_loop