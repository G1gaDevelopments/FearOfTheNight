# Generic player hurt call
scoreboard players enable @a uuid4b

# Enchanted Endermen give nausea and blindness when attacked
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run effect give @s nausea 2 1
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run effect give @s blindness 2 1

# Enchanted Blazes spawn lava when attacked
execute at @e[type=blaze,tag=ench_blaze,nbt={HurtTime:10s}] as @a[distance=..5] as @s at @s run setblock ~ ~2 ~ lava keep
execute at @e[type=blaze,tag=ench_blaze,nbt={HurtTime:10s}] as @a[distance=..5] at @s run say fjiewhffhij

# Queen's Satchel saves players about to die
execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164006}}},scores={health=..2,qst_cooldown=..0,qst_uses=1..}] as @s[nbt={HurtTime:10s}] run function smoges:impl/queen_bag/consume

# Egg Lord can spawn reinforcements when hurt
execute at @e[type=skeleton,tag=egglord,nbt={HurtTime:10s}] if predicate smoges:chance10 run function smoges:impl/egglord/hurt1