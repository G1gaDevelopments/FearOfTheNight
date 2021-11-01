# Burns nearby players
say burn atk
execute as @s[scores={blazeborn_atk=55}] at @s at @e[type=player,distance=..10] run fill ~-1 ~ ~-1 ~1 ~ ~1 fire
execute as @s[scores={blazeborn_atk=55}] run setblock ^ ^ ^3 lava