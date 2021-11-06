# Sub-functions for handling more precise stuffs
function smoges:tick/mob_scan
function smoges:tick/on_hurt
execute as @e[tag=!not_rotated,tag=nt_raycast,type=area_effect_cloud] at @s run function smoges:impl/nocturnus/raycasting_handler
execute as @e[tag=!not_rotated,tag=qn_raycast,type=area_effect_cloud] at @s run function smoges:impl/queen/raycast_handler
function smoges:tick/custom_attacks
execute as @a[scores={coas=1..}] run function smoges:tick/on_coas

# Increment timers
scoreboard players add @e[type=!#smoges:nonmob] time 1
scoreboard players remove @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=1..}] blazeborn_atk 1
scoreboard players remove @e[tag=nocturnus,type=phantom,scores={nocturnus_atk=1..}] nocturnus_atk 1
scoreboard players remove @e[tag=queen,type=stray,scores={queen_atk=1..}] queen_atk 1
scoreboard players remove @a botb_cooldown 1

# Kills the invisible mounts/riders that alter mob AI
kill @e[type=husk,tag=angry_bull,predicate=!smoges:is_riding_angry_bull]
kill @e[type=phantom,tag=blazeborn,predicate=!smoges:is_blazeborn_mount]

# Calms down angry bulls
tp @e[type=husk,tag=angry_bull,scores={time=400}] 0 -6164 0
tag @e[type=cow,tag=angry_bull,scores={time=400}] remove angry_bull

# Display bossbars
bossbar set blazeborn players @a
bossbar set blazeborn max 150
bossbar set nocturnus players @a
bossbar set nocturnus max 300
bossbar set queen players @a
bossbar set queen max 130

# Increment bossbars
execute store result bossbar blazeborn value as @e[tag=blazeborn,type=wither_skeleton,limit=1] run data get entity @s Health
execute unless entity @e[tag=blazeborn,type=wither_skeleton,limit=1] run bossbar set blazeborn visible false
execute store result bossbar nocturnus value as @e[tag=nocturnus,type=phantom,limit=1] run data get entity @s Health
execute unless entity @e[tag=nocturnus,type=phantom,limit=1] run bossbar set nocturnus visible false
execute store result bossbar queen value as @e[tag=queen,type=stray,limit=1] run data get entity @s Health
execute unless entity @e[tag=queen,type=stray,limit=1] run bossbar set queen visible false

# Allows it to be daytime again once Nocturnus has been killed.
execute unless entity @e[tag=nocturnus] run gamerule doDaylightCycle true

# Allows the sun to set on the British Empire again once Elizabeth has been killed.
execute unless entity @e[tag=queen] run gamerule doDaylightCycle true
