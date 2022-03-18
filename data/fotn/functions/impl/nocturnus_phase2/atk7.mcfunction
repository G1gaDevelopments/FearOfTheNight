# Obsidian rain but worse
say obbyrain

execute as @s[scores={nocturnus_p2_atk=370..380}] at @s run summon bat ~ ~-10 ~ {Health:1f,Tags:["nt2_minion","nt2_obbyrain"],Attributes:[{Name:"generic.max_health",Base:1}]}
execute as @s[scores={nocturnus_p2_atk=370..380}] at @s if predicate fotn:rng/chance10 run summon phantom ~ ~-10 ~ {Health:1f,Tags:["nt2_minion","nt2_obbyrain"],Attributes:[{Name:"generic.max_health",Base:1}]}