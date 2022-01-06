# Fire. A lot of it.
execute as @s[scores={queen_atk=5}] if predicate fotn:chance50 run say Burn on the stake, witch!
execute as @s[scores={queen_atk=0..5}] at @s run playsound minecraft:entity.blaze.shoot hostile @a[distance=..30]
execute as @s[scores={queen_atk=0..5}] at @e[type=player,distance=..45] if predicate fotn:chance50 run setblock ~ ~ ~ fire keep

# Reset attack timer (10s)
scoreboard players set @s queen_atk 200