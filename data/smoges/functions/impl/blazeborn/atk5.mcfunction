# Gives players levitation
say levitation
execute as @e[type=player,distance=..30] run particle cloud ~ ~ ~ ~ ~ ~ 1 20
effect give @e[type=player,distance=..40] minecraft:levitation 1 3