# 10% chance to replace cows with bulls
execute if predicate smoges:chance10 run tag @s add replace_with_bull
#say rohfoihe
#execute as @e[tag=replace_with_bull] as @s run say bai
execute as @e[tag=replace_with_bull] as @s run summon cow ~ ~ ~ {CustomNameVisible:1b,Health:13f,Tags:["is_bull","angry_bull","scanned"],Passengers:[{id:"minecraft:husk",HasVisualFire:0b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,Tags:["angry_bull"],CustomName:'{"text":"Bull"}',HandItems:[{id:"minecraft:air",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}],ActiveEffects:[{Id:5b,Amplifier:1b,Duration:199980},{Id:12b,Amplifier:1b,Duration:199980},{Id:14b,Amplifier:1b,Duration:199980,ShowParticles:1b}]}],CustomName:'{"text":"Bull"}',Attributes:[{Name:"generic.max_health",Base:13},{Name:"generic.movement_speed",Base:0.7},{Name:"generic.attack_knockback",Base:0.2}]}
#execute as @e[tag=replace_with_bull] as @s run kill @s
tag @s add scanned

execute as @e[tag=replace_with_bull] as @s run tp @s ~ -6164 ~