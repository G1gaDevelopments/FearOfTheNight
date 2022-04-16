# Spawns reinforcements
execute as @s[scores={blazeborn_atk=0}] if predicate fotn:rng/chance50 run say Come, brothers and sisters.
execute as @s[scores={blazeborn_atk=0}] at @s run playsound minecraft:entity.wither.ambient hostile @a[distance=..30]
execute as @s[scores={blazeborn_atk=0}] at @s run function fotn:spawn/mob/minion/blazeborn_minion
execute as @s[scores={blazeborn_atk=0}] at @s run function fotn:spawn/mob/minion/blazeborn_minion

# reset the attack timer (6s)
scoreboard players set @s blazeborn_atk 160