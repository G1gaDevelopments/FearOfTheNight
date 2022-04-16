# Handles bossbars and shit for Nocturnus
bossbar set nocturnus players @a
bossbar set nocturnus max 900
bossbar set nocturnus_phase1 players @a
bossbar set nocturnus_phase1 max 10

# Increments bossbar for Phase 1
execute as @e[type=phantom,tag=nocturnus_phase1] at @s store result score @s nt_remtgts if entity @e[tag=nt1_crystal]
execute store result bossbar nocturnus_phase1 value as @e[type=phantom,tag=nocturnus_phase1] run scoreboard players get @s nt_remtgts

execute unless entity @e[type=phantom,tag=nocturnus_phase1,scores={nt_remtgts=1..}] run bossbar set nocturnus_phase1 visible false
execute as @e[type=phantom,tag=nocturnus_phase1,scores={nt_remtgts=..0}] run function fotn:impl/mobs/nocturnus_phase1/convert_phase_2