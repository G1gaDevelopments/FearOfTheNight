# 2% chance to replace cows with bulls
execute if predicate smoges:chance10 run tag @s add replace_with_bull
#say rohfoihe
execute as @e[tag=replace_with_bull] as @s run say bai
execute as @e[tag=replace_with_bull] as @s run summon cow ~ ~ ~ {CustomNameVisible:1b,Health:13f,Tags:["scanned","is_bull"],CustomName:'{"text":"Bull","bold":true}',Attributes:[{Name:"generic.max_health",Base:13},{Name:"generic.knockback_resistance",Base:0.2},{Name:"generic.movement_speed",Base:0.5}]}
execute as @e[tag=replace_with_bull] as @s run kill @s
tag @s add scanned

execute as @e[tag=replace_with_bull] as @s run tp @s ~ -6164 ~