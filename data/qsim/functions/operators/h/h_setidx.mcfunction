#x_idx0を設定
scoreboard players operation h_idx0 qubits = h_upper_loop qubits
scoreboard players operation h_idx0 qubits *= h_upper_mul qubits
scoreboard players operation h_idx0 qubits += h_lower_loop qubits

#x_idx1を設定
scoreboard players operation h_idx1 qubits = h_idx0 qubits
scoreboard players operation h_idx1 qubits += h_lower qubits

#1/sqrt(2)
scoreboard players operation setbit qubits = sqrt2d2 qubits

#[idx0, idx0] = 1/sqrt(2)
scoreboard players operation setbit_x qubits = h_idx0 qubits
scoreboard players operation setbit_y qubits = h_idx0 qubits
function qsim:operators/setbit

#[idx0, idx1] = 1/sqrt(2)
scoreboard players operation setbit_x qubits = h_idx0 qubits
scoreboard players operation setbit_y qubits = h_idx1 qubits
function qsim:operators/setbit

#[idx1, idx0] = 1/sqrt(2)
scoreboard players operation setbit_x qubits = h_idx1 qubits
scoreboard players operation setbit_y qubits = h_idx0 qubits
function qsim:operators/setbit

#[idx1, idx1] = -1/sqrt(2)
scoreboard players set setbit qubits 0
scoreboard players operation setbit qubits -= sqrt2d2 qubits
scoreboard players operation setbit_x qubits = h_idx1 qubits
scoreboard players operation setbit_y qubits = h_idx1 qubits
function qsim:operators/setbit