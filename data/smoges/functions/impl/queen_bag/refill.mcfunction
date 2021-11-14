execute at @s as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] run tag @s add refill_qst
execute as @e[type=item,tag=refill_qst] at @s run say giving 1x queen use to @p
execute as @e[type=item,tag=refill_qst] at @s run scoreboard players add @p qst_uses 1
execute as @e[type=item,tag=refill_qst] at @s run kill @s
particle totem_of_undying ~ ~ ~ 0.25 0.25 0.25 0.5 45 force @a
playsound block.amethyst_cluster.place player @a[distance=..5]