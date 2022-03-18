# Spawns in a large amount of shitfuckery
say reinforcements

execute as @s[scores={nocturnus_p2_atk=0..20}] at @s if predicate fotn:rng/chance50 run summon witch ~ ~ ~ {Health:15f,Tags:["nt2_minion"],ActiveEffects:[{Id:11b,Amplifier:2b,Duration:9999},{Id:28b,Amplifier:2b,Duration:9999}],Attributes:[{Name:"generic.max_health",Base:15}]}
execute as @s[scores={nocturnus_p2_atk=0..20}] at @s if predicate fotn:rng/chance50 run summon phantom ~ ~ ~ {Health:15f,Tags:["nt2_minion"],ActiveEffects:[{Id:11b,Amplifier:2b,Duration:9999}],Attributes:[{Name:"generic.max_health",Base:15}]}
execute as @s[scores={nocturnus_p2_atk=0}] at @s if predicate fotn:rng/chance25 run function fotn:spawn/mob/commander_nocturnus

# Reset attack timer (20s)
scoreboard players set @s[scores={nocturnus_p2_atk=0}] nocturnus_p2_atk 400