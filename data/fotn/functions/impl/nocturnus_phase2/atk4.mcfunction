# Charging attack
say wither skulls

execute as @s[scores={nocturnus_p2_atk=260..290}] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.1 70 force @a
execute as @s[scores={nocturnus_p2_atk=240..260}] at @s run summon wither_skull ~ ~-5 ~ {NoGravity:1b,Tags:["nt2_skull","projectile"]}
execute as @e[type=wither_skull,tag=nt2_skull] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=wither_skull,tag=nt2_skull] at @s facing entity @p eyes run tag @s add rotated_proj