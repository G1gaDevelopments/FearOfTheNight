# Sub-functions for handling more precise stuffs
function smoges:tick/mob_scan
function smoges:tick/on_hurt
execute as @e[tag=!not_rotated,type=area_effect_cloud] at @s run function smoges:impl/nocturnus/raycasting_handler

# Increment timers
scoreboard players add @e[type=!#smoges:nonmob] time 1
scoreboard players remove @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=1..}] blazeborn_atk 1
scoreboard players remove @e[tag=nocturnus,type=phantom,scores={nocturnus_atk=1..}] nocturnus_atk 1

# Blazeborn of the Depths' attacks
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=0}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk1
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=20..40}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk2
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=55}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk3
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=80}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk4
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=100}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk5
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=130..160}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk6

# Nocturnus, Monstrosity of the Night's attacks
execute as @e[tag=nocturnus,type=phantom,scores={nocturnus_atk=0..40}] at @s if entity @e[type=player,distance=0..40] run function smoges:impl/nocturnus/atk1
execute as @e[tag=nocturnus,type=phantom,scores={nocturnus_atk=80}] at @s if entity @e[type=player,distance=0..40] run function smoges:impl/nocturnus/atk2
execute as @e[tag=nocturnus,type=phantom,scores={nocturnus_atk=100..110}] at @s if entity @e[type=player,distance=0..40] run function smoges:impl/nocturnus/atk3
execute as @e[tag=nocturnus,type=phantom,scores={nocturnus_atk=140..180}] at @s if entity @e[type=player,distance=0..40] run function smoges:impl/nocturnus/atk4
execute as @e[tag=nocturnus,type=phantom,scores={nocturnus_atk=240..242}] at @s if entity @e[type=player,distance=0..40] run function smoges:impl/nocturnus/atk5

# Nocturnus phase 2
execute if entity @e[tag=nocturnus,type=phantom,limit=1,tag=!nt_phase2,nbt={Health:100f}] run effect give @s invisibility 999999 255
execute if entity @e[tag=nocturnus,type=phantom,limit=1,tag=!nt_phase2,nbt={Health:100f}] run tag @s add nt_phase2

# Kills the invisible mounts/riders that alter mob AI
kill @e[type=husk,tag=angry_bull,predicate=!smoges:is_riding_angry_bull]
kill @e[type=phantom,tag=blazeborn,predicate=!smoges:is_blazeborn_mount]

# Calms down angry bulls
tp @e[type=husk,tag=angry_bull,scores={time=400}] 0 -6164 0
tag @e[type=cow,tag=angry_bull,scores={time=400}] remove angry_bull

# Handles Blazeborn fireballs.
execute as @e[tag=bb_fireball, tag=!moving_fb] at @s rotated as @e[type=wither_skeleton,tag=blazeborn] run function smoges:impl/blazeborn/fireball_motion
execute as @e[tag=bb_fireball,scores={time=30}] as @s run kill @s

# Handles boss reinforcements.
execute as @e[tag=bb_minion,scores={time=200}] as @s run kill @s
execute as @e[tag=nt_minion,scores={time=400}] as @s run kill @s
execute as @e[tag=nt_mimic,scores={time=400}] as @s run kill @s

# Increment bossbars
execute store result bossbar blazeborn value as @e[tag=blazeborn,type=wither_skeleton,limit=1] run data get entity @s Health
execute unless entity @e[tag=blazeborn,type=wither_skeleton,limit=1] run bossbar set blazeborn visible false
execute store result bossbar nocturnus value as @e[tag=nocturnus,type=phantom,limit=1] run data get entity @s Health
execute unless entity @e[tag=nocturnus,type=phantom,limit=1] run bossbar set nocturnus visible false

# Allows it to be daytime again once Nocturnus has been killed.
execute unless entity @e[tag=nocturnus] run gamerule doDaylightCycle true

execute at @e[type=area_effect_cloud,tag=not_rotated] run particle soul_fire_flame ~ ~ ~ 0 0 0 0.00001 1