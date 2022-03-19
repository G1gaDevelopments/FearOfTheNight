# Scans mobs to replace them with custom mobs.
execute as @e[type=cow,tag=!scanned,sort=random] at @s run function fotn:impl/nat_spawn/cow_replace
execute as @e[type=evoker,tag=!scanned,sort=random] at @s run function fotn:impl/nat_spawn/evoker_replace
execute as @e[type=enderman,tag=!scanned,sort=random] at @s run function fotn:impl/nat_spawn/enderman_replace
execute as @e[type=skeleton,tag=!scanned,sort=random] at @s run function fotn:impl/nat_spawn/skeleton_replace
function fotn:tick/uuid_check
execute as @e[type=phantom,tag=!scanned,sort=random] at @s run function fotn:impl/nat_spawn/phantom_replace
execute as @e[type=chicken,tag=!scanned,sort=random] as @s at @s run scoreboard players enable @a uuid2b
execute as @e[type=blaze,tag=!scanned,sort=random] at @s run function fotn:impl/nat_spawn/blaze_replace

# Get thrown enchanted ender pearls.
execute as @e[type=ender_pearl,tag=!scanned,sort=random,nbt={Item:{tag:{CustomModelData:6164004}}}] at @s run tag @s add thrown_ench_epearl
execute as @e[type=ender_pearl,tag=thrown_ench_epearl,scores={time=1}] run data merge entity @s {NoGravity:1b}
execute as @e[type=ender_pearl,tag=thrown_ench_epearl,scores={time=50}] run data merge entity @s {NoGravity:0b}