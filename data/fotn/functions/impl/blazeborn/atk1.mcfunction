# Spawns reinforcements
execute as @s[scores={blazeborn_atk=0}] if predicate fotn:chance50 run say Come, brothers and sisters.
execute as @s[scores={blazeborn_atk=0}] at @s run playsound minecraft:entity.wither.ambient hostile @a[distance=..30]
execute as @s[scores={blazeborn_atk=0}] at @s run summon blaze ~ ~5 ~ {Health:5f,Tags:["bb_minion"],Attributes:[{Name:"generic.max_health",Base:5}]}
execute as @s[scores={blazeborn_atk=0}] at @s run summon blaze ~ ~5 ~ {Health:5f,Tags:["bb_minion"],Attributes:[{Name:"generic.max_health",Base:5}]}

# reset the attack timer (6s)
scoreboard players set @s blazeborn_atk 160