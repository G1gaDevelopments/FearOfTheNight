execute at @s as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] run tag @s add refill_qst
say giving 1x queen use to @p
execute as @e[type=item,tag=refill_qst] run scoreboard players add @p qst_uses 1
execute as @e[type=item,tag=refill_qst] run kill @s
particle totem_of_undying ~-1 ~ ~-1 ~1 ~ ~1 0.5 3
playsound block.amethyst_cluster.place player @a[distance=..5]