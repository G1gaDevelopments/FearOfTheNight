# 10% chance to replace cows with bulls
execute if predicate smoges:chance10 run tag @s add replace_with_bull
#say rohfoihe
#execute as @e[tag=replace_with_bull] as @s run say bai
execute as @e[tag=replace_with_bull] as @s run function smoges:spawn/mob/bull
#execute as @e[tag=replace_with_bull] as @s run kill @s
tag @s add scanned

execute as @e[tag=replace_with_bull] as @s run tp @s ~ -6164 ~