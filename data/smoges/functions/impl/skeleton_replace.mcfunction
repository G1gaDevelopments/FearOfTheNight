# 5% chance to replace skeletons with skeletal assassins
execute if predicate smoges:chance5 run tag @s add replace_with_asn
execute as @e[tag=replace_with_asn] as @s run function smoges:impl/spawn/mob/skeletal_assassin
execute as @e[tag=replace_with_asn] as @s run tp @s ~ -6164 ~
tag @s add scanned