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

#0ビット目を1に
scoreboard players set cx_target qubits 0
function qsim:operators/x/x

#観測
function qsim:operators/measure_output


#0ビット目が1なら1ビット目を反転
scoreboard players set cx_target qubits 1
scoreboard players set cx_control qubits 0
function qsim:operators/cx/cx

#観測
function qsim:operators/measure_output