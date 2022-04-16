# Mimics.
say mimic

execute as @s[scores={nocturnus_p2_atk=295..300}] at @s run function fotn:spawn/mob/mimics/nocturnus_mimic
execute as @s[scores={nocturnus_p2_atk=295..300}] at @s if predicate fotn:rng/chance10 run effect give @r[distance=..100] levitation 1 10