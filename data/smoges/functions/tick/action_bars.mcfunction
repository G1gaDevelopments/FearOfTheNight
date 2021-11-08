# Baton of the Blazeborn
execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164001}}},scores={botb_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Right click to use","color":"gold"},{"text":" | ","color":"magenta"},{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"botb_cooldown"},"color":"red"}]

execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164001}}},scores={botb_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Right click to use","color":"gold"},{"text":" | ","color":"magenta"},{"text":"Ready!","color":"green"}]

# Regal Sceptre
execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164003}}},scores={rgs_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Right click to use","color":"gold"},{"text":" | ","color":"magenta"},{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"rgs_cooldown"},"color":"red"}]

execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164003}}},scores={rgs_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Right click to use","color":"gold"},{"text":" | ","color":"magenta"},{"text":"Ready!","color":"green"}]

# Queen's Satchel
execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164006}}},scores={qst_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Right click to use, refill with totems ","color":"gold"},{"text":" | ","color":"magenta"},{"text":"Uses: ","color":"aqua"},{"score":{"name":"@s","objective":"qst_uses"},"color":"aqua"},{"text":" | ","color":"magenta"},{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"qst_cooldown"},"color":"red"}]

execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164006}}},scores={qst_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Right click to use, refill with totems ","color":"gold"},{"text":" | ","color":"magenta"},{"text":"Uses: ","color":"aqua"},{"score":{"name":"@s","objective":"qst_uses"},"color":"aqua"},{"text":" | ","color":"magenta"},{"text":"Ready!","color":"green"}]