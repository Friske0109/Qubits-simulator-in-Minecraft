#lower初期化
scoreboard players set ccx_lower_loop qubits 0
function qsim:operators/ccx/ccx_lower_loop

#loopを続けるか判定
scoreboard players add ccx_upper_loop qubits 1
execute if score ccx_upper_loop qubits < ccx_upper qubits run function qsim:operators/ccx/ccx_upper_loop