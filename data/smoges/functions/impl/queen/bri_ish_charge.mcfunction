# Handles the BRI'ISH CHARGE!!!!!! Its just the same as arrow_mtion lol

# Initial locations
execute store result score @s AR_x1 run data get entity @s Pos[0] 10
execute store result score @s AR_y1 run data get entity @s Pos[1] 1
execute store result score @s AR_z1 run data get entity @s Pos[2] 10

tp @s ^ ^ ^0.1

# Moved forward (to get slope and other stuff)
execute store result score @s AR_x2 run data get entity @s Pos[0] 10
execute store result score @s AR_y2 run data get entity @s Pos[1] 1
execute store result score @s AR_z2 run data get entity @s Pos[2] 10

# Math to calc motion, stores in AR_[]2
scoreboard players operation @s AR_x2 -= @s AR_x1
scoreboard players operation @s AR_y2 -= @s AR_y1
scoreboard players operation @s AR_z2 -= @s AR_z1

tag @s add moving_ar

# Gives motion
execute store result entity @s Motion[0] double 0.5 run scoreboard players get @s AR_x2
execute store result entity @s Motion[1] double -10 run scoreboard players get @s AR_y2
execute store result entity @s Motion[2] double 0.5 run scoreboard players get @s AR_z2