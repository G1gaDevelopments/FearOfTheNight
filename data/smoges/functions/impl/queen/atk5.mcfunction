# Literally just rushes you
say RUSH B
execute as @s[scores={queen_atk=150..170}] at @s run playsound minecraft:entity.ender_dragon.death hostile @a
execute as @s[scores={queen_atk=150..170}] at @s anchored eyes rotated as @s run function smoges:impl/queen/bri_ish_charge
execute as @s[scores={queen_atk=150..170}] at @s run particle sweep_attack ~ ~ ~ ~ ~ ~ 0.5 1
execute as @s[scores={queen_atk=150..170}] at @s as @e[type=player,distance=..2] run effect give @s slowness 1 2
execute as @s[scores={queen_atk=150..170}] at @s as @e[type=player,distance=..2] run effect give @s instant_damage 1 1