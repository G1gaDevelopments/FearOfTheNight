# Mimics.
say mimic

execute as @s[scores={nocturnus_p2_atk=295..300}] at @s run summon phantom ~ ~ ~ {Glowing:1b,CustomNameVisible:1b,PersistenceRequired:1b,AbsorptionAmount:25f,Health:1f,Size:45,Tags:["nt2_mimic"],CustomName:'{"text":"Nocturnus, Monstrosity of the Night","color":"dark_blue","bold":true}',ActiveEffects:[{Id:5b,Amplifier:3b,Duration:999999},{Id:10b,Amplifier:1b,Duration:999999}],Attributes:[{Name:"generic.max_health",Base:1},{Name:"generic.follow_range",Base:1000}]}
execute as @s[scores={nocturnus_p2_atk=295..300}] at @s if predicate fotn:rng/chance10 run effect give @e[type=player,distance=..100] levitation 1 10