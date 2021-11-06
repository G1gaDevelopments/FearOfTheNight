# Fire. A lot of it.
say fire
execute as @s[scores={queen_atk=0..5}] at @e[type=player,distance=..45] if predicate smoges:chance50 run setblock ~ ~ ~ fire keep

# Reset attack timer (10s)
scoreboard players set @s queen_atk 200