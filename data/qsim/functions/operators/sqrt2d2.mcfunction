#原点に召喚
summon minecraft:area_effect_cloud 0.0 0.0 0.0 {Tags:[position_root]}

#斜め45°を向かせる
execute at @e[tag=position_root,type=minecraft:area_effect_cloud] run tp @e[tag=position_root,type=minecraft:area_effect_cloud] ~ ~ ~ facing 1.0 0.0 1.0

#1マス先に別のエンティティを召喚
execute at @e[tag=position_root] run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:[position_getter]}

#x,z座標を取得(max_value倍)
execute store result score pos_x qubits run data get entity @e[tag=position_getter,type=minecraft:area_effect_cloud,limit=1] Pos[0] 46340
execute store result score pos_z qubits run data get entity @e[tag=position_getter,type=minecraft:area_effect_cloud,limit=1] Pos[2] 46340

#誤差調整
scoreboard players set sqrt2d2 qubits 0
scoreboard players operation sqrt2d2 qubits += pos_x qubits
scoreboard players operation sqrt2d2 qubits += pos_z qubits
scoreboard players operation sqrt2d2 qubits /= 2 qubits