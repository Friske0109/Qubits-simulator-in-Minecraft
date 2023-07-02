#lower初期化
scoreboard players set td_lower_loop qubits 0
function qsim:operators/td/td_lower_loop

#loopを続けるか判定
scoreboard players add td_upper_loop qubits 1
execute if score td_upper_loop qubits < td_upper qubits run function qsim:operators/td/td_upper_loop