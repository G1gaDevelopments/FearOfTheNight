# handles bull getting mad when you punch them or other cows
tag @e[type=cow,tag=!angers_bull,nbt={HurtTime:10s}] add angers_bull
tag @e[type=cow,tag=angers_bull,nbt={HurtTime:9s}] remove angers_bull

execute as @e[type=cow,tag=is_bull] at @s if entity @e[distance=..16,tag=angers_bull] if entity @s[tag=!angry_bull] run function smoges:impl/angered_bull_spawn

# Enchanted Endermen give nausea and blindness when they attack
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run effect give @s nausea 2 1
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run effect give @s blindness 2 1
execute at @e[type=enderman,tag=ench_enderman,nbt={HurtTime:10s}] as @a[distance=..3] as @s run say hi