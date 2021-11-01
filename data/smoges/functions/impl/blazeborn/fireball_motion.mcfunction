# Handles fireballs being fired by Blazeborn

# Initial locations
execute store result score @s FB_x1 run data get entity @s Pos[0] 100
execute store result score @s FB_y1 run data get entity @s Pos[1] 100
execute store result score @s FB_z1 run data get entity @s Pos[2] 100

tp @s ^ ^ ^0.1

# Moved forward (to get slope and other stuff)
execute store result score @s FB_x2 run data get entity @s Pos[0] 100
execute store result score @s FB_y2 run data get entity @s Pos[1] 100
execute store result score @s FB_z2 run data get entity @s Pos[2] 100

# Math to calc motion, stores in FB_[]2
scoreboard players operation @s FB_x2 -= @s FB_x1
scoreboard players operation @s FB_y2 -= @s FB_y1
scoreboard players operation @s FB_z2 -= @s FB_z1

tag @s add moving_fb

# Gives the fireball motion
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s FB_x2
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s FB_y2
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s FB_z2

execute store result entity @s power[0] double 0.1 run scoreboard players get @s FB_x2
execute store result entity @s power[1] double 0.1 run scoreboard players get @s FB_y2
execute store result entity @s power[2] double 0.1 run scoreboard players get @s FB_z2