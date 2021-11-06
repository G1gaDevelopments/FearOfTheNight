# Handles arrows being fired by Queen Elizabeth

# Initial locations
execute store result score @s AR_x1 run data get entity @s Pos[0] 100
execute store result score @s AR_y1 run data get entity @s Pos[1] 100
execute store result score @s AR_z1 run data get entity @s Pos[2] 100

tp @s ^ ^ ^0.1

# Moved forward (to get slope and other stuff)
execute store result score @s AR_x2 run data get entity @s Pos[0] 100
execute store result score @s AR_y2 run data get entity @s Pos[1] 100
execute store result score @s AR_z2 run data get entity @s Pos[2] 100

# Math to calc motion, stores in AR_[]2
scoreboard players operation @s AR_x2 -= @s AR_x1
scoreboard players operation @s AR_y2 -= @s AR_y1
scoreboard players operation @s AR_z2 -= @s AR_z1

tag @s add moving_ar

# Gives the arrow motion
execute store result entity @s Motion[0] double 0.1 run scoreboard players get @s AR_x2
execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s AR_y2
execute store result entity @s Motion[2] double 0.1 run scoreboard players get @s AR_z2