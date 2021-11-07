# Gives players levitation
say levitation
execute as @s[scores={blazeborn_atk=100}] at @s run playsound minecraft:block.beacon.power_select hostile @a[distance=..30]
execute as @e[type=player,distance=..30] run particle cloud ~ ~ ~ ~ ~ ~ 1 20
effect give @e[type=player,distance=..40] minecraft:levitation 1 3