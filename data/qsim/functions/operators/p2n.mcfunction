execute if score p2n_input qubits matches 1.. run scoreboard players operation p2n_output qubits *= 2 qubits
scoreboard players remove p2n_input qubits 1

execute if score p2n_input qubits matches 1.. run function qsim:operators/p2n