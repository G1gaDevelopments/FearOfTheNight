# Run by all chimkens in a 10 bock radius from the egglord.
execute at @s run particle flame ~ ~ ~ 0 0 0 0.5 30
execute at @s run particle smoke ~ ~ ~ 0 0 0 0.5 20
effect give @e[type=skeleton,tag=egglord,distance=0..10] instant_damage 1 1
effect give @e[type=skeleton,tag=egglord,distance=0..10] resistance 1 1
execute as @e[type=skeleton,tag=egglord,distance=0..10] if predicate fotn:chance10 run say Come with me, my feathered friend!
execute as @e[type=skeleton,tag=egglord,distance=0..10] run scoreboard players set @s el_asb_cooldown 100
tp @s ~ -6164 ~