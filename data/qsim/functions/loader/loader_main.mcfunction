execute store result score n_loader qubits run execute if entity @e[tag=qubits_loader]
execute if score n_loader qubits matches 2.. run kill @e[tag=qubits_loader,type=minecraft:armor_stand]
execute if score ready qubits matches 0 run scoreboard players set telled qubits 0
execute if score n_loader qubits matches 0 run scoreboard players set ready qubits 0
#loaderが設置されていなかったらreturn
execute if score n_loader qubits matches 0 run return 0

#初期位置認識
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~1 light_gray_wool run execute if block ~ ~1 ~3 light_gray_wool run execute if block ~ ~1 ~5 light_gray_wool run execute if block ~ ~1 ~7 light_gray_wool run scoreboard players set ready qubits 1
execute if score ready qubits matches 1 run execute if score telled qubits matches 0 run tellraw @a "ready"
execute if score ready qubits matches 1 run execute if score telled qubits matches 0 run function qsim:qubits
scoreboard players set telled qubits 1