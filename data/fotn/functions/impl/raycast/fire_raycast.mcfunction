# Moves the slowness ray forward and handles collisions.
execute at @s run tp ^ ^ ^0.5
particle minecraft:smoke ^ ^ ^-0.2 0 0 0 0.1 1 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 1 force @a
execute if predicate fotn:chance10 run playsound entity.ender_dragon.flap hostile @a[distance=..10]

# On entity
execute if entity @e[type=player,distance=0..1] run particle minecraft:explosion ~ ~ ~ 0 0 0 0.1 1 force @a
execute if entity @e[type=player,distance=0..1] run setblock ~ ~ ~ fire keep
execute if entity @e[type=player,distance=0..1] run effect give @e[type=player,distance=0..1] instant_damage 1 2
execute if entity @e[type=player,distance=0..1] run kill @s

# On block
execute unless block ~ ~ ~ air run particle minecraft:explosion ~ ~ ~ 0 0 0 0.1 1 force @a
execute unless block ~ ~ ~ air run setblock ~ ~ ~ fire keep
execute unless block ~ ~ ~ air at @s run effect give @e[type=player,distance=0..3] instant_damage 1 2
execute unless block ~ ~ ~ air run kill @s