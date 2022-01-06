# 5% chance to enchant endermen
execute if predicate fotn:chance5 run tag @s add replace_with_eblz
#say rohfoihe
execute as @e[tag=replace_with_eblz] as @s run function fotn:spawn/mob/ench_blaze
tag @s add scanned

execute as @e[tag=replace_with_eblz] as @s run tp @s ~ -6164 ~