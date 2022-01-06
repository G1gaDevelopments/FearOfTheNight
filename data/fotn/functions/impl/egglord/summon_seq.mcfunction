summon creeper ~ ~ ~ {Fuse:0s}
summon armor_stand ~ ~10 ~ {Tags:["eg_spawnhere"]}
execute at @e[type=armor_stand,tag=eg_spawnhere,limit=1,sort=nearest] run function fotn:spawn/mob/egglord_boss
kill @e[type=armor_stand,tag=eg_spawnhere,limit=1,sort=nearest]
kill @e[type=egg,nbt={Item:{id:"minecraft:egg",tag:{CustomModelData:6164015}}},distance=..2]