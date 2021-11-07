# Handles when a player right-clicks with a carrot on a stick

# Baton of the Blazeborn
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164001}}}] if entity @s[scores={botb_cooldown=..0}] at @s anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:2b,Tags:["botb_fireball"]}
data modify entity @e[type=fireball,tag=botb_fireball,sort=nearest,limit=1,tag=!owner_set] Owner set from entity @s
tag @e[type=fireball,tag=botb_fireball,tag=!owner_set] add owner_set
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164001}}}] if entity @s[scores={botb_cooldown=..0}] run scoreboard players set @s botb_cooldown 15

# Regal Sceptre
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164003}}}] if entity @s[scores={rgs_cooldown=..0}] at @s at @e[type=!#smoges:nonmob,distance=1..20] run summon lightning_bolt
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164003}}}] if entity @s[scores={rgs_cooldown=..0}] run scoreboard players set @s rgs_cooldown 60

# Resets COAS score
execute as @s run scoreboard players remove @s coas 1