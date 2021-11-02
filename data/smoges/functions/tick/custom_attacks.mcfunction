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

# Assassin attacks
execute as @e[tag=assassin,scores={time=200}] as @s run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s},{id:"minecraft:punch",lvl:1s},{id:"minecraft:infinity",lvl:1s}]}},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s},{id:"minecraft:punch",lvl:1s},{id:"minecraft:infinity",lvl:1s}]}}]}
execute as @e[tag=assassin,scores={time=400}] as @s run data merge entity @s {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Assassin\'s Sword","color":"yellow"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:2,UUID:[I;-1042273713,2144028759,-1814818672,-1513346913]}]}},{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Assassin\'s Sword","color":"yellow"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:2,UUID:[I;-1042273713,2144028759,-1814818672,-1513346913]}]}}]}
execute as @e[tag=assassin,scores={time=599}] as @s run tp @s ^ ^ ^5
execute as @e[tag=assassin,scores={time=600}] as @s run scoreboard players set @s time 0
#{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Assassin\'s Sword","color":"yellow"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:2,UUID:[I;-1042273713,2144028759,-1814818672,-1513346913]}]}}