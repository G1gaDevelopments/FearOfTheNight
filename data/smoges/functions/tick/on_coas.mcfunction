# Handles when a player right-clicks with a carrot on a stick
say test
# Baton of the Blazeborn
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164001}}}] at @s anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:2b,Tags:["botb_fireball"]}

# Resets COAS score
execute as @s run scoreboard players remove @s coas 1