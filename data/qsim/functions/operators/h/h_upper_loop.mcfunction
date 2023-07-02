#lower初期化
scoreboard players set h_lower_loop qubits 0
function qsim:operators/h/h_lower_loop

#loopを続けるか判定
scoreboard players add h_upper_loop qubits 1
execute if score h_upper_loop qubits < h_upper qubits run function qsim:operators/h/h_upper_loop