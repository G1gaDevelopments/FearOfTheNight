# Handles eggs being fired by Egg Lord

# Initial locations
execute store result score @s EG_x1 run data get entity @s Pos[0] 100
execute store result score @s EG_y1 run data get entity @s Pos[1] 100
execute store result score @s EG_z1 run data get entity @s Pos[2] 100

execute as @s[tag=fireLeft] at @s anchored eyes run tp @s ~ ~ ~ ~-10 ~
execute as @s[tag=fireRight] at @s anchored eyes run tp @s ~ ~ ~ ~10 ~
tp @s ^ ^ ^0.1

# Moved forward (to get slope and other stuff)
execute store result score @s EG_x2 run data get entity @s Pos[0] 100
execute store result score @s EG_y2 run data get entity @s Pos[1] 100
execute store result score @s EG_z2 run data get entity @s Pos[2] 100

# Math to calc motion, stores in EG_[]2
scoreboard players operation @s EG_x2 -= @s EG_x1
scoreboard players operation @s EG_y2 -= @s EG_y1
scoreboard players operation @s EG_z2 -= @s EG_z1

tag @s add moving_egg

# Gives the arrow motion
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s EG_x2
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s EG_y2
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s EG_z2