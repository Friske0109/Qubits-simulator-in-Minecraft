#/execute store result storage qubits qubits double 0.000021579628830384117 run scoreboard players get max_value qubits → 1
#/tellraw @p {"nbt":"qubits_i","storage":"qubits"}
data modify storage qubits qubits_double set value [0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d]
data modify storage qubits qubits_double_i set value [0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d,0d]

execute store result storage qubits qubits_double[0] double 0.000021579628830384117 run data get storage qubits qubits[0]
execute store result storage qubits qubits_double[1] double 0.000021579628830384117 run data get storage qubits qubits[1]
execute store result storage qubits qubits_double[2] double 0.000021579628830384117 run data get storage qubits qubits[2]
execute store result storage qubits qubits_double[3] double 0.000021579628830384117 run data get storage qubits qubits[3]
execute store result storage qubits qubits_double[4] double 0.000021579628830384117 run data get storage qubits qubits[4]
execute store result storage qubits qubits_double[5] double 0.000021579628830384117 run data get storage qubits qubits[5]
execute store result storage qubits qubits_double[6] double 0.000021579628830384117 run data get storage qubits qubits[6]
execute store result storage qubits qubits_double[7] double 0.000021579628830384117 run data get storage qubits qubits[7]
execute store result storage qubits qubits_double[8] double 0.000021579628830384117 run data get storage qubits qubits[8]
execute store result storage qubits qubits_double[9] double 0.000021579628830384117 run data get storage qubits qubits[9]
execute store result storage qubits qubits_double[10] double 0.000021579628830384117 run data get storage qubits qubits[10]
execute store result storage qubits qubits_double[11] double 0.000021579628830384117 run data get storage qubits qubits[11]
execute store result storage qubits qubits_double[12] double 0.000021579628830384117 run data get storage qubits qubits[12]
execute store result storage qubits qubits_double[13] double 0.000021579628830384117 run data get storage qubits qubits[13]
execute store result storage qubits qubits_double[14] double 0.000021579628830384117 run data get storage qubits qubits[14]
execute store result storage qubits qubits_double[15] double 0.000021579628830384117 run data get storage qubits qubits[15]

execute store result storage qubits qubits_double_i[0] double 0.000021579628830384117 run data get storage qubits qubits_i[0]
execute store result storage qubits qubits_double_i[1] double 0.000021579628830384117 run data get storage qubits qubits_i[1]
execute store result storage qubits qubits_double_i[2] double 0.000021579628830384117 run data get storage qubits qubits_i[2]
execute store result storage qubits qubits_double_i[3] double 0.000021579628830384117 run data get storage qubits qubits_i[3]
execute store result storage qubits qubits_double_i[4] double 0.000021579628830384117 run data get storage qubits qubits_i[4]
execute store result storage qubits qubits_double_i[5] double 0.000021579628830384117 run data get storage qubits qubits_i[5]
execute store result storage qubits qubits_double_i[6] double 0.000021579628830384117 run data get storage qubits qubits_i[6]
execute store result storage qubits qubits_double_i[7] double 0.000021579628830384117 run data get storage qubits qubits_i[7]
execute store result storage qubits qubits_double_i[8] double 0.000021579628830384117 run data get storage qubits qubits_i[8]
execute store result storage qubits qubits_double_i[9] double 0.000021579628830384117 run data get storage qubits qubits_i[9]
execute store result storage qubits qubits_double_i[10] double 0.000021579628830384117 run data get storage qubits qubits_i[10]
execute store result storage qubits qubits_double_i[11] double 0.000021579628830384117 run data get storage qubits qubits_i[11]
execute store result storage qubits qubits_double_i[12] double 0.000021579628830384117 run data get storage qubits qubits_i[12]
execute store result storage qubits qubits_double_i[13] double 0.000021579628830384117 run data get storage qubits qubits_i[13]
execute store result storage qubits qubits_double_i[14] double 0.000021579628830384117 run data get storage qubits qubits_i[14]
execute store result storage qubits qubits_double_i[15] double 0.000021579628830384117 run data get storage qubits qubits_i[15]

#スコアにも出しとく
execute store result score qubits0 qubits run data get storage qubits qubits[0]
execute store result score qubits1 qubits run data get storage qubits qubits[1]
execute store result score qubits2 qubits run data get storage qubits qubits[2]
execute store result score qubits3 qubits run data get storage qubits qubits[3]
execute store result score qubits4 qubits run data get storage qubits qubits[4]
execute store result score qubits5 qubits run data get storage qubits qubits[5]
execute store result score qubits6 qubits run data get storage qubits qubits[6]
execute store result score qubits7 qubits run data get storage qubits qubits[7]
execute store result score qubits8 qubits run data get storage qubits qubits[8]
execute store result score qubits9 qubits run data get storage qubits qubits[9]
execute store result score qubits10 qubits run data get storage qubits qubits[10]
execute store result score qubits11 qubits run data get storage qubits qubits[11]
execute store result score qubits12 qubits run data get storage qubits qubits[12]
execute store result score qubits13 qubits run data get storage qubits qubits[13]
execute store result score qubits14 qubits run data get storage qubits qubits[14]
execute store result score qubits15 qubits run data get storage qubits qubits[15]

execute store result score qubits_i0 qubits run data get storage qubits qubits_i[0]
execute store result score qubits_i1 qubits run data get storage qubits qubits_i[1]
execute store result score qubits_i2 qubits run data get storage qubits qubits_i[2]
execute store result score qubits_i3 qubits run data get storage qubits qubits_i[3]
execute store result score qubits_i4 qubits run data get storage qubits qubits_i[4]
execute store result score qubits_i5 qubits run data get storage qubits qubits_i[5]
execute store result score qubits_i6 qubits run data get storage qubits qubits_i[6]
execute store result score qubits_i7 qubits run data get storage qubits qubits_i[7]
execute store result score qubits_i8 qubits run data get storage qubits qubits_i[8]
execute store result score qubits_i9 qubits run data get storage qubits qubits_i[9]
execute store result score qubits_i10 qubits run data get storage qubits qubits_i[10]
execute store result score qubits_i11 qubits run data get storage qubits qubits_i[11]
execute store result score qubits_i12 qubits run data get storage qubits qubits_i[12]
execute store result score qubits_i13 qubits run data get storage qubits qubits_i[13]
execute store result score qubits_i14 qubits run data get storage qubits qubits_i[14]
execute store result score qubits_i15 qubits run data get storage qubits qubits_i[15]

execute unless score qubits0 qubits matches -1..0 run execute if score qubits_i0 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[0]","storage":"qubits"}," + 0i) |0000> +"]
execute if score qubits0 qubits matches -1..0 run execute unless score qubits_i0 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[0]","storage":"qubits"},"i) |0000> +"]
execute unless score qubits0 qubits matches -1..0 run execute unless score qubits_i0 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[0]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[0]","storage":"qubits"},"i) |0000> +"]
execute unless score qubits1 qubits matches -1..0 run execute if score qubits_i1 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[1]","storage":"qubits"}," + 0i) |0001> +"]
execute if score qubits1 qubits matches -1..0 run execute unless score qubits_i1 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[1]","storage":"qubits"},"i) |0001> +"]
execute unless score qubits1 qubits matches -1..0 run execute unless score qubits_i1 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[1]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[1]","storage":"qubits"},"i) |0001> +"]
execute unless score qubits2 qubits matches -1..0 run execute if score qubits_i2 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[2]","storage":"qubits"}," + 0i) |0010> +"]
execute if score qubits2 qubits matches -1..0 run execute unless score qubits_i2 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[2]","storage":"qubits"},"i) |0010> +"]
execute unless score qubits2 qubits matches -1..0 run execute unless score qubits_i2 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[2]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[2]","storage":"qubits"},"i) |0010> +"]
execute unless score qubits3 qubits matches -1..0 run execute if score qubits_i3 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[3]","storage":"qubits"}," + 0i) |0011> +"]
execute if score qubits3 qubits matches -1..0 run execute unless score qubits_i3 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[3]","storage":"qubits"},"i) |0011> +"]
execute unless score qubits3 qubits matches -1..0 run execute unless score qubits_i3 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[3]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[3]","storage":"qubits"},"i) |0011> +"]
execute unless score qubits4 qubits matches -1..0 run execute if score qubits_i4 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[4]","storage":"qubits"}," + 0i) |0100> +"]
execute if score qubits4 qubits matches -1..0 run execute unless score qubits_i4 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[4]","storage":"qubits"},"i) |0100> +"]
execute unless score qubits4 qubits matches -1..0 run execute unless score qubits_i4 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[4]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[4]","storage":"qubits"},"i) |0100> +"]
execute unless score qubits5 qubits matches -1..0 run execute if score qubits_i5 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[5]","storage":"qubits"}," + 0i) |0101> +"]
execute if score qubits5 qubits matches -1..0 run execute unless score qubits_i5 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[5]","storage":"qubits"},"i) |0101> +"]
execute unless score qubits5 qubits matches -1..0 run execute unless score qubits_i5 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[5]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[5]","storage":"qubits"},"i) |0101> +"]
execute unless score qubits6 qubits matches -1..0 run execute if score qubits_i6 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[6]","storage":"qubits"}," + 0i) |0110> +"]
execute if score qubits6 qubits matches -1..0 run execute unless score qubits_i6 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[6]","storage":"qubits"},"i) |0110> +"]
execute unless score qubits6 qubits matches -1..0 run execute unless score qubits_i6 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[6]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[6]","storage":"qubits"},"i) |0110> +"]
execute unless score qubits7 qubits matches -1..0 run execute if score qubits_i7 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[7]","storage":"qubits"}," + 0i) |0111> +"]
execute if score qubits7 qubits matches -1..0 run execute unless score qubits_i7 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[7]","storage":"qubits"},"i) |0111> +"]
execute unless score qubits7 qubits matches -1..0 run execute unless score qubits_i7 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[7]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[7]","storage":"qubits"},"i) |0111> +"]
execute unless score qubits8 qubits matches -1..0 run execute if score qubits_i8 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[8]","storage":"qubits"}," + 0i) |1000> +"]
execute if score qubits8 qubits matches -1..0 run execute unless score qubits_i8 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[8]","storage":"qubits"},"i) |1000> +"]
execute unless score qubits8 qubits matches -1..0 run execute unless score qubits_i8 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[8]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[8]","storage":"qubits"},"i) |1000> +"]
execute unless score qubits9 qubits matches -1..0 run execute if score qubits_i9 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[9]","storage":"qubits"}," + 0i) |1001> +"]
execute if score qubits9 qubits matches -1..0 run execute unless score qubits_i9 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[9]","storage":"qubits"},"i) |1001> +"]
execute unless score qubits9 qubits matches -1..0 run execute unless score qubits_i9 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[9]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[9]","storage":"qubits"},"i) |1001> +"]
execute unless score qubits10 qubits matches -1..0 run execute if score qubits_i10 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[10]","storage":"qubits"}," + 0i) |1010> +"]
execute if score qubits10 qubits matches -1..0 run execute unless score qubits_i10 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[10]","storage":"qubits"},"i) |1010> +"]
execute unless score qubits10 qubits matches -1..0 run execute unless score qubits_i10 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[10]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[10]","storage":"qubits"},"i) |1010> +"]
execute unless score qubits11 qubits matches -1..0 run execute if score qubits_i11 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[11]","storage":"qubits"}," + 0i) |1011> +"]
execute if score qubits11 qubits matches -1..0 run execute unless score qubits_i11 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[11]","storage":"qubits"},"i) |1011> +"]
execute unless score qubits11 qubits matches -1..0 run execute unless score qubits_i11 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[11]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[11]","storage":"qubits"},"i) |1011> +"]
execute unless score qubits12 qubits matches -1..0 run execute if score qubits_i12 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[12]","storage":"qubits"}," + 0i) |1100> +"]
execute if score qubits12 qubits matches -1..0 run execute unless score qubits_i12 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[12]","storage":"qubits"},"i) |1100> +"]
execute unless score qubits12 qubits matches -1..0 run execute unless score qubits_i12 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[12]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[12]","storage":"qubits"},"i) |1100> +"]
execute unless score qubits13 qubits matches -1..0 run execute if score qubits_i13 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[13]","storage":"qubits"}," + 0i) |1101> +"]
execute if score qubits13 qubits matches -1..0 run execute unless score qubits_i13 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[13]","storage":"qubits"},"i) |1101> +"]
execute unless score qubits13 qubits matches -1..0 run execute unless score qubits_i13 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[13]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[13]","storage":"qubits"},"i) |1101> +"]
execute unless score qubits14 qubits matches -1..0 run execute if score qubits_i14 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[14]","storage":"qubits"}," + 0i) |1110> +"]
execute if score qubits14 qubits matches -1..0 run execute unless score qubits_i14 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[14]","storage":"qubits"},"i) |1110> +"]
execute unless score qubits14 qubits matches -1..0 run execute unless score qubits_i14 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[14]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[14]","storage":"qubits"},"i) |1110> +"]
execute unless score qubits15 qubits matches -1..0 run execute if score qubits_i15 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[15]","storage":"qubits"}," + 0i) |1111> +"]
execute if score qubits15 qubits matches -1..0 run execute unless score qubits_i15 qubits matches -1..0 run tellraw @p [{"text":"(0 + "},{"nbt":"qubits_double_i[15]","storage":"qubits"},"i) |1111> +"]
execute unless score qubits15 qubits matches -1..0 run execute unless score qubits_i15 qubits matches -1..0 run tellraw @p [{"text":"("},{"nbt":"qubits_double[15]","storage":"qubits"}," + ",{"nbt":"qubits_double_i[15]","storage":"qubits"},"i) |1111> +"]