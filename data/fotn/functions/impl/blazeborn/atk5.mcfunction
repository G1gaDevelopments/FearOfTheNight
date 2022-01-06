# Gives players levitation
execute as @s[scores={blazeborn_atk=100}] at @s run playsound minecraft:block.beacon.power_select hostile @a[distance=..30]
execute as @e[type=player,distance=..30] run particle cloud ~ ~ ~ 0.25 0.25 0.25 0.5 45 force @a
effect give @e[type=player,distance=..40] minecraft:levitation 1 3