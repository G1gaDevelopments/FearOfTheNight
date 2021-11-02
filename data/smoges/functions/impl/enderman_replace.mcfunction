# 5% chance to replace cows with bulls
execute if predicate smoges:chance5 run tag @s add replace_with_eedm
#say rohfoihe
#execute as @e[tag=replace_with_eedm] as @s run say bai
execute as @e[tag=replace_with_eedm] as @s run summon enderman ~ ~ ~ {CustomNameVisible:1b,Health:50f,Tags:["ench_enderman"],CustomName:'{"text":"Enchanted Enderman"}',ActiveEffects:[{Id:1b,Amplifier:2b,Duration:9999,ShowParticles:1b},{Id:5b,Amplifier:1b,Duration:9999,ShowParticles:1b},{Id:8b,Amplifier:2b,Duration:9999,ShowParticles:1b},{Id:12b,Amplifier:1b,Duration:9999,ShowParticles:1b}],Attributes:[{Name:"generic.max_health",Base:50},{Name:"generic.knockback_resistance",Base:0.5}]}
execute as @e[tag=replace_with_eedm] as @s run kill @s
tag @s add scanned

execute as @e[tag=replace_with_eedm] as @s run tp @s ~ -6164 ~