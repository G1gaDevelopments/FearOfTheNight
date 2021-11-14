# Literally just rushes you
execute as @s[scores={queen_atk=170}] if predicate smoges:chance50 run say CHAAAAAAAAARGEEEEE
execute as @s[scores={queen_atk=150..170}] at @s run playsound minecraft:entity.enderman.teleport hostile @a
execute as @s[scores={queen_atk=150..170}] at @s anchored eyes rotated as @s run function smoges:impl/queen/bri_ish_charge
execute as @s[scores={queen_atk=150..170}] at @s run particle sweep_attack ~ ~0.5 ~ 0.25 0.25 0.25 0.7 45 force @a
execute as @s[scores={queen_atk=150..170}] at @s as @e[type=player,distance=..2] run effect give @s slowness 1 2
execute as @s[scores={queen_atk=150..170}] at @s as @e[type=player,distance=..2] run effect give @s instant_damage 1 1