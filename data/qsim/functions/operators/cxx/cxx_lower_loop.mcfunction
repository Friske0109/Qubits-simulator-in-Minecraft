function qsim:operators/cxx/cxx_setidx

#loopを続けるか判定
scoreboard players add cxx_lower_loop qubits 1
execute if score cxx_lower_loop qubits < cxx_lower qubits run function qsim:operators/cxx/cxx_lower_loop