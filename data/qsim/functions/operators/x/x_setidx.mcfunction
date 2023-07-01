#x_idx0を設定
scoreboard players operation x_idx0 qubits = x_upper_loop qubits
scoreboard players operation x_idx0 qubits *= x_upper_mul qubits
scoreboard players operation x_idx0 qubits += x_lower_loop qubits

scoreboard players operation x_idx1 qubits = x_idx0 qubits
scoreboard players operation x_idx1 qubits += x_lower qubits

scoreboard players operation x_setbit_x qubits = x_idx0 qubits
scoreboard players operation x_setbit_y qubits = x_idx1 qubits
scoreboard players operation x_setbit qubits = max_value qubits
function qsim:operators/x/x_setbit

scoreboard players operation x_setbit_x qubits = x_idx1 qubits
scoreboard players operation x_setbit_y qubits = x_idx0 qubits
scoreboard players operation x_setbit qubits = max_value qubits
function qsim:operators/x/x_setbit