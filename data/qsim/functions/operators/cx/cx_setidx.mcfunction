#cx_idx0を設定
scoreboard players operation cx_idx0 qubits = cx_upper_loop qubits
scoreboard players operation cx_idx0 qubits *= cx_upper_mul qubits
scoreboard players operation cx_idx0 qubits += cx_lower_loop qubits

#cx_idx1を設定
scoreboard players operation cx_idx1 qubits = cx_idx0 qubits
scoreboard players operation cx_idx1 qubits += cx_lower qubits

#setbit = 1
scoreboard players operation setbit qubits = max_value qubits

#cx_control_bsの計算
scoreboard players operation get_control_bit qubits = cx_idx0 qubits
scoreboard players operation get_control_bit qubits /= cx_control_bs qubits
scoreboard players operation get_control_bit qubits %= 2 qubits

#get_control_bit == 0 なら、[idx0, idx1] = 1 , get_control_bit == 1 なら、[idx0, idx0] = 1
execute if score get_control_bit qubits matches 1 run scoreboard players operation setbit_x qubits = cx_idx0 qubits
execute if score get_control_bit qubits matches 1 run scoreboard players operation setbit_y qubits = cx_idx1 qubits
execute if score get_control_bit qubits matches 0 run scoreboard players operation setbit_x qubits = cx_idx0 qubits
execute if score get_control_bit qubits matches 0 run scoreboard players operation setbit_y qubits = cx_idx0 qubits
function qsim:operators/setbit

#get_control_bit == 1 なら、[idx1, idx0] = 1 , get_control_bit == 0 なら、[idx1, idx1] = 1
execute if score get_control_bit qubits matches 1 run scoreboard players operation setbit_x qubits = cx_idx1 qubits
execute if score get_control_bit qubits matches 1 run scoreboard players operation setbit_y qubits = cx_idx0 qubits
execute if score get_control_bit qubits matches 0 run scoreboard players operation setbit_x qubits = cx_idx1 qubits
execute if score get_control_bit qubits matches 0 run scoreboard players operation setbit_y qubits = cx_idx1 qubits
function qsim:operators/setbit