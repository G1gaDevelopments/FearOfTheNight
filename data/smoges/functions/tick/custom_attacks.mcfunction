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

# Handles Blazeborn fireballs.
execute as @e[tag=bb_fireball, tag=!moving_fb] at @s rotated as @e[type=wither_skeleton,tag=blazeborn] run function smoges:impl/blazeborn/fireball_motion
execute as @e[tag=bb_fireball,scores={time=30}] as @s run kill @s

# Handles boss reinforcements.
execute as @e[tag=bb_minion,scores={time=200}] as @s run kill @s
execute as @e[tag=nt_minion,scores={time=400}] as @s run kill @s
execute as @e[tag=nt_mimic,scores={time=400}] as @s run kill @s
