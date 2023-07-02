#lower初期化
scoreboard players set t_lower_loop qubits 0
function qsim:operators/t/t_lower_loop

#loopを続けるか判定
scoreboard players add t_upper_loop qubits 1
execute if score t_upper_loop qubits < t_upper qubits run function qsim:operators/t/t_upper_loop