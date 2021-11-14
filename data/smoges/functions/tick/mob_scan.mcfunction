# Scans mobs to replace them with custom mobs.
execute as @e[type=cow,tag=!scanned,sort=random] at @s run function smoges:impl/cow_replace
execute as @e[type=evoker,tag=!scanned,sort=random] at @s run function smoges:impl/evoker_replace
execute as @e[type=enderman,tag=!scanned,sort=random] at @s run function smoges:impl/enderman_replace
execute as @e[type=skeleton,tag=!scanned,sort=random] at @s run function smoges:impl/skeleton_replace
function smoges:tick/uuid_check
execute as @e[type=phantom,tag=!scanned,sort=random] at @s run function smoges:impl/phantom_replace
execute as @e[type=chicken,tag=!scanned,sort=random] as @s at @s run scoreboard players enable @a uuid2b

# Get thrown enchanted ender pearls.
execute as @e[type=ender_pearl,tag=!scanned,sort=random,nbt={Item:{tag:{CustomModelData:6164004}}}] at @s run tag @s add thrown_ench_epearl
execute as @e[type=ender_pearl,tag=thrown_ench_epearl] run data merge entity @s {NoGravity:1b}