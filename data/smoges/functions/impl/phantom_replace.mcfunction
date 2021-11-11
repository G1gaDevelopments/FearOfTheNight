# 2% chance to replace phantoms with Knights of Nocturnus
execute if predicate smoges:chance2 run tag @s add replace_with_kon
execute as @e[tag=replace_with_kon] as @s run function smoges:spawn/mob/knight_nocturnus
tag @s add scanned

execute as @e[tag=replace_with_kon] as @s run tp @s ~ -6164 ~