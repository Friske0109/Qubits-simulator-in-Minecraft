#lower初期化
scoreboard players set cx_lower_loop qubits 0
function qsim:operators/cx/cx_lower_loop

#loopを続けるか判定
scoreboard players add cx_upper_loop qubits 1
execute if score cx_upper_loop qubits < cx_upper qubits run function qsim:operators/cx/cx_upper_loop