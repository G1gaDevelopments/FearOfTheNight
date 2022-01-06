# Fancy summoning sequence for Blazeborn. Executed at the altar.
kill @e[type=item,nbt={Item:{id:"minecraft:quartz",tag:{CustomModelData:6164011},Count:1b},OnGround:1b},distance=..2,limit=1,sort=nearest]

summon armor_stand ~ ~10 ~ {Tags:["bb_spawnhere"],Invisible:1b,NoGravity:1b,Invulnerable:1b}
execute as @e[type=armor_stand,tag=bb_spawnhere] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #fotn:allow_breaking
execute as @e[type=armor_stand,tag=bb_spawnhere] at @s run particle explosion ~ ~ ~ 1 1 1 1 20 force @a
execute as @e[type=armor_stand,tag=bb_spawnhere] at @s run playsound entity.generic.explode hostile @a[distance=..20]
execute as @e[type=armor_stand,tag=bb_spawnhere] at @s run function fotn:spawn/mob/blazeborn_boss
execute as @e[type=armor_stand,tag=bb_spawnhere] at @s run kill @s