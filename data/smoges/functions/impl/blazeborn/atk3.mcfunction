# Burns nearby players
execute as @s[scores={blazeborn_atk=40}] if predicate smoges:chance50 run say Burn.
execute as @s[scores={blazeborn_atk=40}] at @s run playsound minecraft:entity.blaze.shoot hostile @a[distance=..30]
execute as @s[scores={blazeborn_atk=55}] at @s at @e[type=player,distance=..10] run fill ~-1 ~ ~-1 ~1 ~ ~1 fire replace air
execute as @s[scores={blazeborn_atk=55}] run setblock ^ ^ ^3 lava keep