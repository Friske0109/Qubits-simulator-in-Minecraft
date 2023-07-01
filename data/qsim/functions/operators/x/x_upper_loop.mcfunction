#null防止
scoreboard players add x_upper_loop qubits 0

#lower初期化
scoreboard players set x_lower_loop qubits 0
function qsim:operators/x/x_lower_loop

#loopを続けるか判定
scoreboard players add x_upper_loop qubits 1
execute if score x_upper_loop qubits < x_upper qubits run function qsim:operators/x/x_upper_loop