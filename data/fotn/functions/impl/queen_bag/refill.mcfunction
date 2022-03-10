scoreboard players operation @s qst_uses += @s qst_totems
tellraw @s ["",{"text":"Added ","color":"blue"},{"score":{"name":"@s","objective":"qst_totems"},"bold":true,"color":"gold"},{"text":" totem(s) to your Queen's Satchel!","color":"blue"}]
clear @s totem_of_undying
playsound minecraft:entity.experience_orb.pickup master @s