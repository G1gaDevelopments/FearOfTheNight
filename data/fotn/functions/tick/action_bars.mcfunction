# Baton of the Blazeborn
execute as @a[scores={held_fotn_item=1,botb_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"botb_cooldown"},"color":"red"}]

execute as @a[scores={held_fotn_item=1,botb_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Ready!","color":"green"}]

# Regal Sceptre
execute as @a[scores={held_fotn_item=3,rgs_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"rgs_cooldown"},"color":"red"}]

execute as @a[scores={held_fotn_item=3,rgs_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Ready!","color":"green"}]

# Queen's Satchel
execute as @a[scores={held_fotn_item=6,qst_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Uses: ","color":"aqua"},{"score":{"name":"@s","objective":"qst_uses"},"color":"aqua"},{"text":" | ","color":"magenta"},{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"qst_cooldown"},"color":"red"}]

execute as @a[scores={held_fotn_item=6,qst_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Uses: ","color":"aqua"},{"score":{"name":"@s","objective":"qst_uses"},"color":"aqua"},{"text":" | ","color":"magenta"},{"text":"Ready!","color":"green"}]

# Egg Launcher
execute as @a[scores={held_fotn_item=16,egl_cooldown=1..}] at @s run title @s actionbar ["",{"text":"Ammo: ","color":"aqua"},{"score":{"name":"@s","objective":"egl_ammo"},"color":"aqua"},{"text":" | ","color":"magenta"},{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"egl_cooldown"},"color":"red"}]

execute as @a[scores={held_fotn_item=16,egl_cooldown=..0}] at @s run title @s actionbar ["",{"text":"Ammo: ","color":"aqua"},{"score":{"name":"@s","objective":"egl_ammo"},"color":"aqua"},{"text":" | ","color":"magenta"},{"text":"Ready!","color":"green"}]