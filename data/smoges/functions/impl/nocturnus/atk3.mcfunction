# Spawns in a lot of phantoms and witches lol
say reinforcements
execute as @s[scores={nocturnus_atk=100..110}] run summon phantom ~ ~ ~ {Health:7f,Tags:["nt_minion"],Attributes:[{Name:"generic.max_health",Base:7}]}
execute as @s[scores={nocturnus_atk=100..110}] run summon witch ~ ~ ~ {Health:7f,Tags:["nt_minion"],ActiveEffects:[{Id:28b,Amplifier:1b,Duration:9999}],Attributes:[{Name:"generic.max_health",Base:7}]}