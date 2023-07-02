#とりあえず4bitで考える

#2**4x2**4の行列を用意
data remove storage qubits operator
data modify storage qubits operator set value [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]

#upperを2**targetに設定
scoreboard players operation p2n_input qubits = ccx_target qubits
scoreboard players set p2n_output qubits 1
function qsim:operators/p2n
scoreboard players operation ccx_upper qubits = p2n_output qubits

#lowerを2**(n_bits - target - 1)に設定
scoreboard players operation p2n_input qubits = n_bits qubits
scoreboard players operation p2n_input qubits -= ccx_target qubits
scoreboard players remove p2n_input qubits 1
scoreboard players set p2n_output qubits 1
function qsim:operators/p2n
scoreboard players operation ccx_lower qubits = p2n_output qubits

#control1_bsを2**(n_bits - control1 - 1)に設定
scoreboard players operation p2n_input qubits = n_bits qubits
scoreboard players operation p2n_input qubits -= ccx_control1 qubits
scoreboard players remove p2n_input qubits 1
scoreboard players set p2n_output qubits 1
function qsim:operators/p2n
scoreboard players operation ccx_control1_bs qubits = p2n_output qubits

#control2_bsを2**(n_bits - control2 - 1)に設定
scoreboard players operation p2n_input qubits = n_bits qubits
scoreboard players operation p2n_input qubits -= ccx_control2 qubits
scoreboard players remove p2n_input qubits 1
scoreboard players set p2n_output qubits 1
function qsim:operators/p2n
scoreboard players operation ccx_control2_bs qubits = p2n_output qubits

#upperに演算する用の値を2**(n_bits-target)に設定 (lower*2)
scoreboard players operation ccx_upper_mul qubits = ccx_lower qubits
scoreboard players operation ccx_upper_mul qubits *= 2 qubits

#loopカウントの初期化
scoreboard players set ccx_upper_loop qubits 0
scoreboard players set ccx_lower_loop qubits 0

#X(n_bits,cx_target)の行列を用意
function qsim:operators/ccx/ccx_upper_loop

#行列積を計算
function qsim:operators/matrix_product