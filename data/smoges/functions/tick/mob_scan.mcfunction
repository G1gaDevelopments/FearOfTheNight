# Scans mobs to replace them with custom mobs.
execute as @e[type=cow,tag=!scanned,sort=random] at @s run function smoges:impl/cow_replace
execute as @e[type=evoker,tag=!scanned,sort=random] at @s run function smoges:impl/evoker_replace
execute as @e[type=enderman,tag=!scanned,sort=random] at @s run function smoges:impl/enderman_replace
execute as @e[type=skeleton,tag=!scanned,sort=random] at @s run function smoges:impl/skeleton_replace