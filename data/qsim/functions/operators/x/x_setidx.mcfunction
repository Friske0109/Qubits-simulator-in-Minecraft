#x_idx0を設定
scoreboard players operation x_idx0 qubits = x_upper_loop qubits
scoreboard players operation x_idx0 qubits *= x_upper_mul qubits
scoreboard players operation x_idx0 qubits += x_lower_loop qubits

#x_idx1を設定
scoreboard players operation x_idx1 qubits = x_idx0 qubits
scoreboard players operation x_idx1 qubits += x_lower qubits

#setbit = 1
scoreboard players operation setbit qubits = max_value qubits

#[idx0, idx1] = 1
scoreboard players operation setbit_x qubits = x_idx0 qubits
scoreboard players operation setbit_y qubits = x_idx1 qubits
function qsim:operators/setbit

#[idx1, idx0] = 1
scoreboard players operation setbit_x qubits = x_idx1 qubits
scoreboard players operation setbit_y qubits = x_idx0 qubits
function qsim:operators/setbit