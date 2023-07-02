#ccx_idx0を設定
scoreboard players operation ccx_idx0 qubits = ccx_upper_loop qubits
scoreboard players operation ccx_idx0 qubits *= ccx_upper_mul qubits
scoreboard players operation ccx_idx0 qubits += ccx_lower_loop qubits

#ccx_idx1を設定
scoreboard players operation ccx_idx1 qubits = ccx_idx0 qubits
scoreboard players operation ccx_idx1 qubits += ccx_lower qubits

#setbit = 1
scoreboard players operation setbit qubits = max_value qubits

#ccx_control1_bsの計算
scoreboard players operation get_control1_bit qubits = ccx_idx0 qubits
scoreboard players operation get_control1_bit qubits /= ccx_control1_bs qubits
execute if score get_control1_bit qubits matches 2.. run scoreboard players set get_control1_bit qubits 0

#ccx_control2_bsの計算
scoreboard players operation get_control2_bit qubits = ccx_idx0 qubits
scoreboard players operation get_control2_bit qubits /= ccx_control2_bs qubits
scoreboard players operation get_control2_bit qubits %= 2 qubits

#tellraw @p ["",{"text":""},{"score":{"name":"ccx_idx0","objective":"qubits"}},",",{"score":{"name":"ccx_idx1","objective":"qubits"}}]
#tellraw @p ["",{"text":""},{"score":{"name":"get_control1_bit","objective":"qubits"}},",",{"score":{"name":"get_control2_bit","objective":"qubits"}}]

#get_control1_bit == 0 get_control2_bit == 0 or なら、[idx0, idx1] = 1 , get_control1_bit == 1 and get_control2_bit == 1 なら、[idx0, idx0] = 1
execute if score get_control1_bit qubits matches 1 run execute if score get_control2_bit qubits matches 1 run scoreboard players operation setbit_x qubits = ccx_idx0 qubits
execute if score get_control1_bit qubits matches 1 run execute if score get_control2_bit qubits matches 1 run scoreboard players operation setbit_y qubits = ccx_idx1 qubits
execute if score get_control1_bit qubits matches 0 run scoreboard players operation setbit_x qubits = ccx_idx0 qubits
execute if score get_control1_bit qubits matches 0 run scoreboard players operation setbit_y qubits = ccx_idx0 qubits
execute if score get_control2_bit qubits matches 0 run scoreboard players operation setbit_x qubits = ccx_idx0 qubits
execute if score get_control2_bit qubits matches 0 run scoreboard players operation setbit_y qubits = ccx_idx0 qubits
function qsim:operators/setbit

#get_control1_bit == 0 get_control2_bit == 0 or なら、[idx0, idx0] = 1 , get_control1_bit == 1 and get_control2_bit == 1 なら、[idx1, idx1] = 1
execute if score get_control1_bit qubits matches 1 run execute if score get_control2_bit qubits matches 1 run scoreboard players operation setbit_x qubits = ccx_idx1 qubits
execute if score get_control1_bit qubits matches 1 run execute if score get_control2_bit qubits matches 1 run scoreboard players operation setbit_y qubits = ccx_idx0 qubits
execute if score get_control1_bit qubits matches 0 run scoreboard players operation setbit_x qubits = ccx_idx1 qubits
execute if score get_control1_bit qubits matches 0 run scoreboard players operation setbit_y qubits = ccx_idx1 qubits
execute if score get_control2_bit qubits matches 0 run scoreboard players operation setbit_x qubits = ccx_idx1 qubits
execute if score get_control2_bit qubits matches 0 run scoreboard players operation setbit_y qubits = ccx_idx1 qubits
function qsim:operators/setbit