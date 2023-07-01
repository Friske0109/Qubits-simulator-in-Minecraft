#define qubits
#とりあえず4bit固定で

data remove storage qubits qubits

#4bit
scoreboard players set n_bits qubits 4

#2**4個のデータ
data modify storage qubits qubits set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
execute store result storage qubits qubits[0] int 1 run scoreboard players get max_value qubits

#観測
function qsim:operators/measure_output

#x_test
scoreboard players set x_target qubits 1
function qsim:operators/x

scoreboard players set x_target qubits 3
function qsim:operators/x

#観測
function qsim:operators/measure_output