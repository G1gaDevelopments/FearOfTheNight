# 5% chance to replace skeletons with skeletal assassins
execute if predicate fotn:rng/chance5 run tag @s add replace_with_asn
execute as @e[tag=replace_with_asn] as @s run function fotn:spawn/mob/skeletal_assassin
execute as @e[tag=replace_with_asn] as @s run tp @s ~ -6164 ~
tag @s add scanned