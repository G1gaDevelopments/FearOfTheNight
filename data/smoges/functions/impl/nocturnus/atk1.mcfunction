# Does several raycast attacks
say raycast

execute as @s[scores={nocturnus_atk=1}] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["not_rotated"],Duration:200}
execute as @s[scores={nocturnus_atk=0}] as @e[tag=not_rotated,type=area_effect_cloud,distance=0..1] facing entity @r eyes run tp @s ~ ~ ~ ~ ~
execute as @s[scores={nocturnus_atk=0}] as @e[tag=not_rotated,type=area_effect_cloud,distance=0..1] facing entity @r eyes run tag @s remove not_rotated

execute as @s[scores={nocturnus_atk=11}] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["not_rotated"],Duration:200}
execute as @s[scores={nocturnus_atk=10}] as @e[tag=not_rotated,type=area_effect_cloud,distance=0..1] facing entity @r eyes run tp @s ~ ~ ~ ~ ~
execute as @s[scores={nocturnus_atk=10}] as @e[tag=not_rotated,type=area_effect_cloud,distance=0..1] facing entity @r eyes run tag @s remove not_rotated

execute as @s[scores={nocturnus_atk=21}] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["not_rotated"],Duration:200}
execute as @s[scores={nocturnus_atk=20}] as @e[tag=not_rotated,type=area_effect_cloud,distance=0..1] facing entity @r eyes run tp @s ~ ~ ~ ~ ~
execute as @s[scores={nocturnus_atk=20}] as @e[tag=not_rotated,type=area_effect_cloud,distance=0..1] facing entity @r eyes run tag @s remove not_rotated

execute as @s[scores={nocturnus_atk=40}] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["not_rotated"],Duration:200}
execute as @s[scores={nocturnus_atk=39}] as @e[tag=not_rotated,type=area_effect_cloud,distance=0..1] facing entity @r eyes run tp @s ~ ~ ~ ~ ~
execute as @s[scores={nocturnus_atk=39}] as @e[tag=not_rotated,type=area_effect_cloud,distance=0..1] facing entity @r eyes run tag @s remove not_rotated

# reset the attack timer (20s)
scoreboard players set @s nocturnus_atk 300