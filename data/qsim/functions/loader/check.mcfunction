scoreboard players reset load_0 qubits
scoreboard players reset load_1 qubits
scoreboard players reset load_2 qubits
scoreboard players reset load_3 qubits

#X=1, H=2, CX=3, CCX=4, T=5, TD=6

execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~1 orange_wool run kill @e[tag=qubits_loader,type=armor_stand]
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~3 orange_wool run kill @e[tag=qubits_loader,type=armor_stand]
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~5 orange_wool run kill @e[tag=qubits_loader,type=armor_stand]
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~7 orange_wool run kill @e[tag=qubits_loader,type=armor_stand]
execute unless entity @e[tag=qubits_loader,type=armor_stand] run function qsim:operators/measure_output

execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~1 lime_wool run scoreboard players set load_3 qubits 1
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~3 lime_wool run scoreboard players set load_2 qubits 1
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~5 lime_wool run scoreboard players set load_1 qubits 1
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~7 lime_wool run scoreboard players set load_0 qubits 1

execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~1 light_blue_wool run scoreboard players set load_3 qubits 2
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~3 light_blue_wool run scoreboard players set load_2 qubits 2
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~5 light_blue_wool run scoreboard players set load_1 qubits 2
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~7 light_blue_wool run scoreboard players set load_0 qubits 2

execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~1 cyan_wool run scoreboard players set load_3 qubits 3
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~3 cyan_wool run scoreboard players set load_2 qubits 3
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~5 cyan_wool run scoreboard players set load_1 qubits 3
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~7 cyan_wool run scoreboard players set load_0 qubits 3

execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~1 cyan_concrete run scoreboard players set load_3 qubits 31
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~3 cyan_concrete run scoreboard players set load_2 qubits 31
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~5 cyan_concrete run scoreboard players set load_1 qubits 31
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~7 cyan_concrete run scoreboard players set load_0 qubits 31

execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~1 purple_wool run scoreboard players set load_3 qubits 4
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~3 purple_wool run scoreboard players set load_2 qubits 4
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~5 purple_wool run scoreboard players set load_1 qubits 4
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~7 purple_wool run scoreboard players set load_0 qubits 4

execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~1 purple_concrete run scoreboard players set load_3 qubits 41
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~3 purple_concrete run scoreboard players set load_2 qubits 41
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~5 purple_concrete run scoreboard players set load_1 qubits 41
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~7 purple_concrete run scoreboard players set load_0 qubits 41

execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~1 red_wool run scoreboard players set load_3 qubits 5
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~3 red_wool run scoreboard players set load_2 qubits 5
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~5 red_wool run scoreboard players set load_1 qubits 5
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~7 red_wool run scoreboard players set load_0 qubits 5

execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~1 pink_wool run scoreboard players set load_3 qubits 6
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~3 pink_wool run scoreboard players set load_2 qubits 6
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~5 pink_wool run scoreboard players set load_1 qubits 6
execute at @e[tag=qubits_loader,type=armor_stand] run execute if block ~ ~1 ~7 pink_wool run scoreboard players set load_0 qubits 6

#x実行
execute if score load_0 qubits matches 1 run scoreboard players set x_target qubits 0
execute if score load_0 qubits matches 1 run function qsim:operators/x/x
execute if score load_1 qubits matches 1 run scoreboard players set x_target qubits 1
execute if score load_1 qubits matches 1 run function qsim:operators/x/x
execute if score load_2 qubits matches 1 run scoreboard players set x_target qubits 2
execute if score load_2 qubits matches 1 run function qsim:operators/x/x
execute if score load_3 qubits matches 1 run scoreboard players set x_target qubits 3
execute if score load_3 qubits matches 1 run function qsim:operators/x/x

#h実行
execute if score load_0 qubits matches 2 run scoreboard players set h_target qubits 0
execute if score load_0 qubits matches 2 run function qsim:operators/h/h
execute if score load_1 qubits matches 2 run scoreboard players set h_target qubits 1
execute if score load_1 qubits matches 2 run function qsim:operators/h/h
execute if score load_2 qubits matches 2 run scoreboard players set h_target qubits 2
execute if score load_2 qubits matches 2 run function qsim:operators/h/h
execute if score load_3 qubits matches 2 run scoreboard players set h_target qubits 3
execute if score load_3 qubits matches 2 run function qsim:operators/h/h

#cx実行
execute if score load_0 qubits matches 3 run scoreboard players set cx_target qubits 0
execute if score load_1 qubits matches 3 run scoreboard players set cx_target qubits 1
execute if score load_2 qubits matches 3 run scoreboard players set cx_target qubits 2
execute if score load_3 qubits matches 3 run scoreboard players set cx_target qubits 3
execute if score load_0 qubits matches 31 run scoreboard players set cx_control qubits 0
execute if score load_1 qubits matches 31 run scoreboard players set cx_control qubits 1
execute if score load_2 qubits matches 31 run scoreboard players set cx_control qubits 2
execute if score load_3 qubits matches 31 run scoreboard players set cx_control qubits 3
execute if score load_0 qubits matches 3 run function qsim:operators/cx/cx
execute if score load_1 qubits matches 3 run function qsim:operators/cx/cx
execute if score load_2 qubits matches 3 run function qsim:operators/cx/cx
execute if score load_3 qubits matches 3 run function qsim:operators/cx/cx

#ccx
execute if score load_0 qubits matches 4 run scoreboard players set ccx_target qubits 0
execute if score load_1 qubits matches 4 run scoreboard players set ccx_target qubits 1
execute if score load_2 qubits matches 4 run scoreboard players set ccx_target qubits 2
execute if score load_3 qubits matches 4 run scoreboard players set ccx_target qubits 3
execute if score load_0 qubits matches 41 run scoreboard players set ccx_control1 qubits 0
execute if score load_1 qubits matches 41 run scoreboard players set ccx_control1 qubits 1
execute if score load_2 qubits matches 41 run scoreboard players set ccx_control1 qubits 2
execute if score load_3 qubits matches 41 run scoreboard players set ccx_control1 qubits 3
#1に設定されいないものを2に設定
execute if score load_0 qubits matches 41 run scoreboard players set ccx_control2 qubits 0
execute if score load_1 qubits matches 41 run execute unless score ccx_control1 qubits matches 1 run scoreboard players set ccx_control2 qubits 1
execute if score load_2 qubits matches 41 run execute unless score ccx_control1 qubits matches 2 run scoreboard players set ccx_control2 qubits 2
execute if score load_0 qubits matches 4 run function qsim:operators/ccx/ccx
execute if score load_1 qubits matches 4 run function qsim:operators/ccx/ccx
execute if score load_2 qubits matches 4 run function qsim:operators/ccx/ccx
execute if score load_3 qubits matches 4 run function qsim:operators/ccx/ccx

#t実行
execute if score load_0 qubits matches 5 run scoreboard players set t_target qubits 0
execute if score load_0 qubits matches 5 run function qsim:operators/t/t
execute if score load_1 qubits matches 5 run scoreboard players set t_target qubits 1
execute if score load_1 qubits matches 5 run function qsim:operators/t/t
execute if score load_2 qubits matches 5 run scoreboard players set t_target qubits 2
execute if score load_2 qubits matches 5 run function qsim:operators/t/t
execute if score load_3 qubits matches 5 run scoreboard players set t_target qubits 3
execute if score load_3 qubits matches 5 run function qsim:operators/t/t

#td実行
execute if score load_0 qubits matches 6 run scoreboard players set td_target qubits 0
execute if score load_0 qubits matches 6 run function qsim:operators/td/td
execute if score load_1 qubits matches 6 run scoreboard players set td_target qubits 1
execute if score load_1 qubits matches 6 run function qsim:operators/td/td
execute if score load_2 qubits matches 6 run scoreboard players set td_target qubits 2
execute if score load_2 qubits matches 6 run function qsim:operators/td/td
execute if score load_3 qubits matches 6 run scoreboard players set td_target qubits 3
execute if score load_3 qubits matches 6 run function qsim:operators/td/td