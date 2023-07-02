function qsim:operators/cx/cx_setidx

#loopを続けるか判定
scoreboard players add cx_lower_loop qubits 1
execute if score cx_lower_loop qubits < cx_lower qubits run function qsim:operators/cx/cx_lower_loop