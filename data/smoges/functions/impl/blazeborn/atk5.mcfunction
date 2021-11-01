# Gives players levitation
say levitation
execute as @s[scores={blazeborn_atk=80}] as @e[type=player,distance=..30] run particle cloud ~ ~ ~ ~ ~ ~ 1 20
execute as @s[scores={blazeborn_atk=80}] run effect give @e[type=player,distance=..40] minecraft:levitation 5 5