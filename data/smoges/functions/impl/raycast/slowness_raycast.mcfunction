# Moves the slowness ray forward and handles collisions.
execute at @s run tp ^ ^ ^0.5
particle minecraft:soul ~ ~ ~ 0 0 0 0.1 1 force @a
execute if predicate smoges:chance10 run playsound entity.ender_dragon.flap hostile @a[distance=..10]

# On entity
execute if entity @e[type=player,distance=0..3] run say on entity
execute if entity @e[type=player,distance=0..3] run summon creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0}
execute if entity @e[type=player,distance=0..3] run effect give @e[type=player,distance=0..3] slowness 1 5
execute if entity @e[type=player,distance=0..3] run effect give @e[type=player,distance=0..3] instant_damage 1 2
execute if entity @e[type=player,distance=0..3] run kill @s

# On block
execute unless block ~ ~ ~ air run say on block
execute unless block ~ ~ ~ air run summon creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0}
execute unless block ~ ~ ~ air at @s run effect give @e[type=player,distance=0..3] slowness 1 5
execute unless block ~ ~ ~ air at @s run effect give @e[type=player,distance=0..3] instant_damage 1 2
execute unless block ~ ~ ~ air run kill @s