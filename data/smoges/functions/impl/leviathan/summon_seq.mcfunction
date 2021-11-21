# Executed at altar when you throw the Leviathan Summoning Crystal at it.
kill @e[type=item,nbt={Item:{id:"minecraft:quartz",tag:{CustomModelData:6164013},Count:1b},OnGround:1b},distance=..2,limit=1,sort=nearest]
execute as @s at @s anchored eyes run summon armor_stand ^ ^ ^4 {Tags:["lv_spawnhere"],NoGravity:1b,Invulnerable:1b}

execute as @e[type=armor_stand,tag=lv_spawnhere,sort=nearest,limit=1] at @s run tp @s ~ ~7 ~
execute at @e[type=armor_stand,tag=lv_spawnhere,sort=nearest,limit=1] run summon lightning_bolt
execute at @e[type=armor_stand,tag=lv_spawnhere,sort=nearest,limit=1] run function smoges:spawn/mob/leviathan_boss
execute as @e[type=armor_stand,tag=lv_spawnhere,sort=nearest,limit=1] at @s run kill @s