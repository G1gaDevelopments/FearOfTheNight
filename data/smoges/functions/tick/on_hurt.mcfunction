# Enchanted Endermen give nausea and blindness when they attack
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run effect give @s nausea 2 1
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run effect give @s blindness 2 1
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run say hi

# Queen's Satchel saves players about to die
execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164006}}},scores={health=..2,qst_cooldown=..0,qst_uses=1..}] as @s[nbt={HurtTime:10s}] run function smoges:impl/queen_bag/consume