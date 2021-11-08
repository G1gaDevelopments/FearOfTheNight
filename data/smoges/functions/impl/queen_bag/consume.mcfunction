# execute store result score @s qst_storage run data get entity @s SelectedItem.tag.qstUses
# scoreboard players operation @s qst_storage -= #-1 qst_storage
# # execute store result storage smoges qstUses int 1 run scoreboard players get @s qst_storage
# # data modify storage smoges qstUses set 
# execute store result entity @s SelectedItem.tag.qstUses int 1 run scoreboard players get @s qst_storage
scoreboard players remove @s qst_uses 1
effect give @s absorption 240 2
effect give @s regeneration 10 3
playsound item.totem.use player @a[distance=..5]
particle totem_of_undying ~-1 ~ ~-1 ~1 ~ ~1 0.5 3