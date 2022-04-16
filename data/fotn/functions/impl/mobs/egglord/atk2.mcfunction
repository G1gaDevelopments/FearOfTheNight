# Spawns in mimics.
execute as @s[scores={egglord_atk=50}] if predicate fotn:rng/chance50 run say I'm everywhere at once!
execute as @s[scores={egglord_atk=50}] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.5 20

execute as @s[scores={egglord_atk=50}] at @s run function fotn:spawn/mob/mimics/egglord_mimic
execute as @s[scores={egglord_atk=50}] at @s run function fotn:spawn/mob/mimics/egglord_mimic