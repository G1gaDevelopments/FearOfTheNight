# Baton of the Blazeborn
execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164001}}},scores={botb_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"botb_cooldown"},"color":"red"}]

execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164001}}},scores={botb_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Ready!","color":"green"}]

# Regal Sceptre
execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164003}}},scores={rgs_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"rgs_cooldown"},"color":"red"}]

execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164003}}},scores={rgs_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Ready!","color":"green"}]

# Queen's Satchel
execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164006}}},scores={qst_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Uses: ","color":"aqua"},{"score":{"name":"@s","objective":"qst_uses"},"color":"aqua"},{"text":" | ","color":"magenta"},{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"qst_cooldown"},"color":"red"}]

execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164006}}},scores={qst_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Uses: ","color":"aqua"},{"score":{"name":"@s","objective":"qst_uses"},"color":"aqua"},{"text":" | ","color":"magenta"},{"text":"Ready!","color":"green"}]

# Egg Launcher
execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164016}}},scores={egl_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Ammo: ","color":"aqua"},{"score":{"name":"@s","objective":"egl_ammo"},"color":"aqua"},{"text":" | ","color":"magenta"},{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"egl_cooldown"},"color":"red"}]

execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164016}}},scores={egl_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Ammo: ","color":"aqua"},{"score":{"name":"@s","objective":"egl_ammo"},"color":"aqua"},{"text":" | ","color":"magenta"},{"text":"Ready!","color":"green"}]