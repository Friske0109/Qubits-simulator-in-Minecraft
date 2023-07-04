#define qubits
#とりあえず4bit固定で

data remove storage qubits qubits

#4bit
scoreboard players set n_bits qubits 4

#2**4個のデータ
data modify storage qubits qubits set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage qubits qubits_i set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
execute store result storage qubits qubits[0] int 1 run scoreboard players get max_value qubits


#足し算回路をつくってみる(2ビット目をccx01 ,3bit目をcx0,cx1にする)
#scoreboard players set ccx_target qubits 2
#scoreboard players set ccx_control1 qubits 0
#scoreboard players set ccx_control2 qubits 1
#function qsim:operators/ccx/ccx

#scoreboard players set cx_target qubits 3
#scoreboard players set cx_control qubits 0
#function qsim:operators/cx/cx

#scoreboard players set cx_target qubits 3
#scoreboard players set cx_control qubits 1
#function qsim:operators/cx/cx
