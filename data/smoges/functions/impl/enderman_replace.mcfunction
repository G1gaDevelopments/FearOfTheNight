# 5% chance to enchant endermen
execute if predicate smoges:chance5 run tag @s add replace_with_eedm
#say rohfoihe
#execute as @e[tag=replace_with_eedm] as @s run say bai
execute as @e[tag=replace_with_eedm] as @s run function smoges:spawn/mob/ench_enderman
#execute as @e[tag=replace_with_eedm] as @s run kill @s
tag @s add scanned

execute as @e[tag=replace_with_eedm] as @s run tp @s ~ -6164 ~