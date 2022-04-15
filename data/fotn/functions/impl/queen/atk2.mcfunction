# Spawns in guards.
execute as @s[scores={queen_atk=35}] if predicate fotn:rng/chance50 run say Protect me, my warriors!
execute as @s[scores={queen_atk=35}] at @s run playsound minecraft:entity.witch.celebrate hostile @a[distance=..30]
execute as @s[scores={queen_atk=30..35}] at @s if predicate fotn:rng/chance50 run function fotn:spawn/mob/minion/queens_guard
execute as @s[scores={queen_atk=30}] at @s run spreadplayers ~ ~ 5 1 false @e[type=zombie,tag=qn_minion]