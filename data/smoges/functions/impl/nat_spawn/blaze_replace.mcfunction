# 5% chance to enchant endermen
execute if predicate smoges:chance5 run tag @s add replace_with_eblz
#say rohfoihe
execute as @e[tag=replace_with_eblz] as @s run function smoges:spawn/mob/ench_blaze
tag @s add scanned

execute as @e[tag=replace_with_eblz] as @s run tp @s ~ -6164 ~