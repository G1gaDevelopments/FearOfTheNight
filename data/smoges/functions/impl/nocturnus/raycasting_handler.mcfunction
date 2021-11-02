# Handles the Nocturus' raycasting attacks.

# Explode on entity
execute if entity @e[type=player,tag=!nocturnus,distance=0..3] run summon creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0}
execute if entity @e[type=player,tag=!nocturnus,distance=0..3] as @e[tag=!nocturnus,distance=0..3] run effect give @s blindness 5 1
execute if entity @e[type=player,tag=!nocturnus,distance=0..3] run kill @s

# Explode on block
execute unless block ~ ~ ~ air run summon creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0}
execute unless block ~ ~ ~ air run kill @s

execute at @s run tp ^ ^ ^0.5
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 2