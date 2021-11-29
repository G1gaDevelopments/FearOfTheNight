# Handles all projectiles' motion. 
# TODO: Make all custom mobs use this function instead

# Initial locations
execute store result score @s PJ_x1 run data get entity @s Pos[0] 100
execute store result score @s PJ_y1 run data get entity @s Pos[1] 100
execute store result score @s PJ_z1 run data get entity @s Pos[2] 100

tp @s ^ ^ ^0.1

# Moved forward (to get slope and other stuff)
execute store result score @s PJ_x2 run data get entity @s Pos[0] 100
execute store result score @s PJ_y2 run data get entity @s Pos[1] 100
execute store result score @s PJ_z2 run data get entity @s Pos[2] 100

# Math to calc motion, stores in PJ_[]2
scoreboard players operation @s PJ_x2 -= @s PJ_x1
scoreboard players operation @s PJ_y2 -= @s PJ_y1
scoreboard players operation @s PJ_z2 -= @s PJ_z1

tag @s add moving_pj

# Gives the projectile motion
execute store result entity @s Motion[0] double 0.055 run scoreboard players get @s PJ_x2
execute store result entity @s Motion[1] double 0.055 run scoreboard players get @s PJ_y2
execute store result entity @s Motion[2] double 0.055 run scoreboard players get @s PJ_z2

execute store result entity @s power[0] double 0.1 run scoreboard players get @s PJ_x2
execute store result entity @s power[1] double 0.1 run scoreboard players get @s PJ_y2
execute store result entity @s power[2] double 0.1 run scoreboard players get @s PJ_z2