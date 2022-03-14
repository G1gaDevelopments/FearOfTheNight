# Applies random spread to projectiles, raycasts, etc.

# Stores rotations of entity into scores
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s rs_rotation0
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s rs_rotation1

# Create random spread
function fotn:impl/util/lcg/random
scoreboard players operation @s rs_rotation0 += $out LCG.main
function fotn:impl/util/lcg/random
scoreboard players operation @s rs_rotation1 += $out LCG.main

execute store result storage fotn:random_spread Rots0 float 1 run scoreboard players get @s rs_rotation0
execute store result storage fotn:random_spread Rots1 float 1 run scoreboard players get @s rs_rotation1

# Rotate the entity accordingly
data modify entity @s Rotation[0] set from storage fotn:random_spread Rots0
data modify entity @s Rotation[1] set from storage fotn:random_spread Rots1