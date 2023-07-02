#lower初期化
scoreboard players set cxx_lower_loop qubits 0
function qsim:operators/cxx/cxx_lower_loop

#loopを続けるか判定
scoreboard players add cxx_upper_loop qubits 1
execute if score cxx_upper_loop qubits < cxx_upper qubits run function qsim:operators/cxx/cxx_upper_loop