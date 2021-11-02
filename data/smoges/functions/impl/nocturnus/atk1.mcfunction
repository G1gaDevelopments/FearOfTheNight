# Does several raycast attacks
say raycast

execute as @s[scores={nocturnus_atk=2}] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["not_rotated"],Duration:200}
execute as @e[tag=not_rotated,type=area_effect_cloud] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=not_rotated,type=area_effect_cloud] facing entity @p eyes run tag @s remove not_rotated
execute as @e[tag=not_rotated,type=area_effect_cloud] facing entity @p eyes run say done

execute as @s[scores={nocturnus_atk=12}] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["not_rotated"],Duration:200}
execute as @e[tag=not_rotated,type=area_effect_cloud] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=not_rotated,type=area_effect_cloud] facing entity @p eyes run tag @s remove not_rotated

execute as @s[scores={nocturnus_atk=22}] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["not_rotated"],Duration:200}
execute as @e[tag=not_rotated,type=area_effect_cloud] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=not_rotated,type=area_effect_cloud] facing entity @p eyes run tag @s remove not_rotated

execute as @s[scores={nocturnus_atk=40}] at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["not_rotated"],Duration:200}
execute as @e[tag=not_rotated,type=area_effect_cloud] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=not_rotated,type=area_effect_cloud] facing entity @p eyes run tag @s remove not_rotated

# reset the attack timer (20s)
scoreboard players set @s nocturnus_atk 300