#とりあえず4bitで考える

#2**4x2**4の行列を用意
data remove storage qubits operator
data modify storage qubits operator set value [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]

#upperを2**targetに設定
scoreboard players operation p2n_input qubits = cx_target qubits
scoreboard players set p2n_output qubits 1
function qsim:operators/p2n
scoreboard players operation cx_upper qubits = p2n_output qubits

#lowerを2**(n_bits - target - 1)に設定
scoreboard players operation p2n_input qubits = n_bits qubits
scoreboard players operation p2n_input qubits -= cx_target qubits
scoreboard players remove p2n_input qubits 1
scoreboard players set p2n_output qubits 1
function qsim:operators/p2n
scoreboard players operation cx_lower qubits = p2n_output qubits

#control_bsを2**(n_bits - control - 1)に設定
scoreboard players operation p2n_input qubits = n_bits qubits
scoreboard players operation p2n_input qubits -= cx_control qubits
scoreboard players remove p2n_input qubits 1
scoreboard players set p2n_output qubits 1
function qsim:operators/p2n
scoreboard players operation cx_control_bs qubits = p2n_output qubits

#upperに演算する用の値を2**(n_bits-target)に設定 (lower*2)
scoreboard players operation cx_upper_mul qubits = cx_lower qubits
scoreboard players operation cx_upper_mul qubits *= 2 qubits

#loopカウントの初期化
scoreboard players set cx_upper_loop qubits 0
scoreboard players set cx_lower_loop qubits 0

#X(n_bits,cx_target)の行列を用意
function qsim:operators/cx/cx_upper_loop

#行列積を計算
function qsim:operators/matrix_product