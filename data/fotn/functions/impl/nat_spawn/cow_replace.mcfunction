# 10% chance to replace cows with bulls
execute if predicate fotn:chance10 run tag @s add replace_with_bull
execute as @e[tag=replace_with_bull] as @s run function fotn:spawn/mob/bull
tag @s add scanned

execute as @e[tag=replace_with_bull] as @s run tp @s ~ -6164 ~