# Obsidian rain but worse
say obbyrain

execute as @s[scores={nocturnus_p2_atk=370..380}] at @s run function fotn:spawn/mob/minion/nt_obbyrain_bat
execute as @s[scores={nocturnus_p2_atk=370..380}] at @s if predicate fotn:rng/chance10 run function fotn:spawn/mob/minion/nt_obbyrain_phantom