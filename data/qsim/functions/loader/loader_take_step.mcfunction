execute at @e[tag=qubits_loader] run tp @e[tag=qubits_loader] ~-2 ~ ~
function qsim:loader/check
execute if score show_state qubits matches 1 run function qsim:show_qubits_state
execute if score show_state qubits matches 1 run tellraw @a "-------------------------------"
execute unless entity @e[tag=qubits_loader,type=armor_stand] run function qsim:operators/measure_output