# Generic player hurt call
scoreboard players enable @a uuid4b
say h
# Enchanted Endermen give nausea and blindness when attacked
execute at @s[type=enderman,tag=ench_enderman] as @a[distance=..3] as @s run effect give @s nausea 2 1
execute at @s[type=enderman,tag=ench_enderman] as @a[distance=..3] as @s run effect give @s blindness 2 1

# Enchanted Blazes spawn lava when attacked
execute at @s[type=blaze,tag=ench_blaze] as @a[distance=..5] as @s at @s run setblock ~ ~2 ~ lava keep
execute at @s[type=blaze,tag=ench_blaze] as @a[distance=..5] at @s run say fjiewhffhij

# Egg Lord can spawn reinforcements when hurt
execute at @s[type=skeleton,tag=egglord] if predicate fotn:rng/chance10 run function fotn:impl/egglord/hurt1
execute at @s[type=skeleton,tag=egglord] if predicate fotn:rng/chance10 run function fotn:impl/egglord/hurt2