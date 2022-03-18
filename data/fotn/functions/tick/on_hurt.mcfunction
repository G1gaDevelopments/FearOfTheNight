# Generic player hurt call
scoreboard players enable @a uuid4b

# Enchanted Endermen give nausea and blindness when attacked
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run effect give @s nausea 2 1
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run effect give @s blindness 2 1

# Enchanted Blazes spawn lava when attacked
execute at @e[type=blaze,tag=ench_blaze,nbt={HurtTime:10s}] as @a[distance=..5] as @s at @s run setblock ~ ~2 ~ lava keep
execute at @e[type=blaze,tag=ench_blaze,nbt={HurtTime:10s}] as @a[distance=..5] at @s run say fjiewhffhij

# Egg Lord can spawn reinforcements when hurt
execute at @e[type=skeleton,tag=egglord,nbt={HurtTime:10s}] if predicate fotn:rng/chance10 run function fotn:impl/egglord/hurt1
execute at @e[type=skeleton,tag=egglord,nbt={HurtTime:10s}] if predicate fotn:rng/chance10 run function fotn:impl/egglord/hurt2