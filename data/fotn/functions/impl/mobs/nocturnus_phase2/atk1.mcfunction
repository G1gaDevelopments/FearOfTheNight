# Spawns in a large amount of shitfuckery
say reinforcements

execute as @s[scores={nocturnus_p2_atk=0..20}] at @s if predicate fotn:rng/chance50 run function fotn:spawn/mob/minion/nt_witch
execute as @s[scores={nocturnus_p2_atk=0..20}] at @s if predicate fotn:rng/chance50 run function fotn:spawn/mob/minion/nt_phantom
execute as @s[scores={nocturnus_p2_atk=0}] at @s if predicate fotn:rng/chance25 run function fotn:spawn/mob/commander_nocturnus

# Reset attack timer (20s)
scoreboard players set @s[scores={nocturnus_p2_atk=0}] nocturnus_p2_atk 400