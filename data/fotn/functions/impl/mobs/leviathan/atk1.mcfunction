# Summons airstrikes.
execute as @s[scores={levi_atk=1..11}] at @s run summon armor_stand ~ ~25 ~ {Invulnerable:1b,Invisible:0b,Tags:["lv_airstrike"],OnGround:0b}
execute as @s[scores={levi_atk=0}] at @s run spreadplayers ~ ~ 1 30 false @e[type=armor_stand,tag=lv_airstrike]
execute as @s[scores={levi_atk=0}] at @s run tag @e[type=armor_stand,tag=lv_airstrike] add lv_as_active
execute as @s[scores={levi_atk=0}] as @e[type=armor_stand,tag=lv_as_active] at @s run tp ~ ~5 ~

# Resets attack timer (10s)
scoreboard players set @s[scores={levi_atk=0}] levi_atk 200