# Enchanted Endermen give nausea and blindness when they attack
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run effect give @s nausea 2 1
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run effect give @s blindness 2 1
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run say hi