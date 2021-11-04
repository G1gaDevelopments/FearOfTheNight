# Handles when a player right-clicks with a carrot on a stick

# Baton of the Blazeborn
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164001}}}] if entity @s[scores={botb_cooldown=..0}] at @s anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:2b,Tags:["botb_fireball"]}
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164001}}}] if entity @s[scores={botb_cooldown=..0}] run scoreboard players add @s botb_cooldown 40
# Resets COAS score
execute as @s run scoreboard players remove @s coas 1