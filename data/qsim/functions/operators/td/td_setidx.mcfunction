#td_idx0を設定
scoreboard players operation td_idx0 qubits = td_upper_loop qubits
scoreboard players operation td_idx0 qubits *= td_upper_mul qubits
scoreboard players operation td_idx0 qubits += td_lower_loop qubits

#td_idx1を設定
scoreboard players operation td_idx1 qubits = td_idx0 qubits
scoreboard players operation td_idx1 qubits += td_lower qubits

#setbit = 1
scoreboard players operation setbit qubits = max_value qubits

#[idx0, idx0] = 1
scoreboard players operation setbit_x qubits = td_idx0 qubits
scoreboard players operation setbit_y qubits = td_idx0 qubits
function qsim:operators/setbit

#1/sqrt(2) - 1/sqrt(2)
scoreboard players operation setbit qubits = sqrt2d2 qubits
scoreboard players reset setbit_i qubits
scoreboard players operation setbit_i qubits -= sqrt2d2 qubits

#[idx1, idx1] = 1/sqrt(2)+ 1/sqrt(2)i
scoreboard players operation setbit_x qubits = td_idx1 qubits
scoreboard players operation setbit_y qubits = td_idx1 qubits
scoreboard players operation setbit_i_x qubits = td_idx1 qubits
scoreboard players operation setbit_i_y qubits = td_idx1 qubits
function qsim:operators/setbit
function qsim:operators/setbit_i