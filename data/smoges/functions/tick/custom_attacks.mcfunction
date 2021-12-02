# BOSSES

# Blazeborn of the Depths' attacks
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=0}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk1
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=20..40}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk2
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=55}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk3
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=80}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk4
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=100}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk5
execute as @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=130..160}] at @s if entity @e[type=player,distance=0..30] run function smoges:impl/blazeborn/atk6

# Handles Blazeborn fireballs.
execute as @e[tag=bb_fireball,scores={time=30}] as @s run kill @s

# Elizabeth's attacks
execute as @e[tag=queen,type=stray,scores={queen_atk=0..5}] at @s if entity @e[type=player,distance=0..40] run function smoges:impl/queen/atk1
execute as @e[tag=queen,type=stray,scores={queen_atk=30..35}] at @s if entity @e[type=player,distance=0..40] run function smoges:impl/queen/atk2
execute as @e[tag=queen,type=stray,scores={queen_atk=60}] at @s if entity @e[type=player,distance=0..40] run function smoges:impl/queen/atk3
execute as @e[tag=queen,type=stray,scores={queen_atk=100..120}] at @s if entity @e[type=player,distance=0..40] run function smoges:impl/queen/atk4
execute as @e[tag=queen,type=stray,scores={queen_atk=160..180}] at @s if entity @e[type=player,distance=0..40] run function smoges:impl/queen/atk5

# Handles Elizabeth arrows.
execute as @e[type=arrow,scores={time=30}] as @s at @s run scoreboard players enable @a uuid3b
execute as @e[tag=qn_arrow,scores={time=30},type=spectral_arrow] as @s run kill @s

# Leviathan's attacks
execute as @e[type=giant,tag=leviathan,scores={levi_atk=0..11}] at @s if entity @e[type=player,distance=0..70] run function smoges:impl/leviathan/atk1
execute as @e[type=giant,tag=leviathan,scores={levi_atk=100}] at @s if entity @e[type=player,distance=0..70] run function smoges:impl/leviathan/atk2
execute as @e[type=giant,tag=leviathan,scores={levi_atk=150..180}] at @s if entity @e[type=player,distance=0..70] run function smoges:impl/leviathan/atk3

# Handles Leviathan airstrikes
execute as @e[type=armor_stand,tag=lv_airstrike] at @s run particle smoke ~ ~ ~
execute as @e[type=armor_stand,tag=lv_airstrike] at @s run particle small_flame ~ ~ ~
execute as @e[type=armor_stand,tag=lv_as_active] at @s run effect give @s slow_falling
execute as @e[type=armor_stand,tag=lv_as_active,nbt={OnGround:1b}] run tag @s add lv_as_explode
execute as @e[type=armor_stand,tag=lv_as_explode] at @s run summon creeper ~ ~ ~ {Fuse:0}
kill @e[tag=lv_as_explode]

# Egg Lord's attacks
execute as @e[tag=egglord,type=skeleton,scores={egglord_atk=0..30}] at @s if entity @e[type=player,distance=0..140] run function smoges:impl/egglord/atk1
execute as @e[tag=egglord,type=skeleton,scores={egglord_atk=50}] at @s if entity @e[type=player,distance=0..140] run function smoges:impl/egglord/atk2
execute as @e[tag=egglord,type=skeleton,scores={egglord_atk=70..85}] at @s if entity @e[type=player,distance=0..140] run function smoges:impl/egglord/atk3

# Handles Egg Lord eggs.
execute as @e[tag=el_eggspam,scores={time=30}] run kill @s

# Handles Egg Lord absorbing chickens.
execute as @e[type=chicken] at @s if entity @e[type=skeleton,tag=egglord,distance=0..10,scores={el_asb_cooldown=..0}] run function smoges:impl/egglord/absorb

# Nocturnus, Monstrosity of the Night's attacks in Phase 2
execute as @e[type=phantom,tag=nocturnus_phase2,scores={nocturnus_p2_atk=0..20}] at @s if entity @e[type=player,distance=0..300] run function smoges:impl/nocturnus_phase2/atk1
execute as @e[type=phantom,tag=nocturnus_phase2,scores={nocturnus_p2_atk=60..140}] at @s if entity @e[type=player,distance=0..300] run function smoges:impl/nocturnus_phase2/atk2
execute as @e[type=phantom,tag=nocturnus_phase2,scores={nocturnus_p2_atk=160..180}] at @s if entity @e[type=player,distance=0..300] run function smoges:impl/nocturnus_phase2/atk3
execute as @e[type=phantom,tag=nocturnus_phase2,scores={nocturnus_p2_atk=240..290}] at @s if entity @e[type=player,distance=0..300] run function smoges:impl/nocturnus_phase2/atk4
execute as @e[type=phantom,tag=nocturnus_phase2,scores={nocturnus_p2_atk=295..300}] at @s if entity @e[type=player,distance=0..300] run function smoges:impl/nocturnus_phase2/atk5
execute as @e[type=phantom,tag=nocturnus_phase2,scores={nocturnus_p2_atk=340..360}] at @s if entity @e[type=player,distance=0..300] run function smoges:impl/nocturnus_phase2/atk6

# MOBS

# Assassin attacks
execute as @e[tag=assassin,scores={time=200}] as @s run data merge entity @s {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s},{id:"minecraft:punch",lvl:1s},{id:"minecraft:infinity",lvl:1s}]}},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s},{id:"minecraft:punch",lvl:1s},{id:"minecraft:infinity",lvl:1s}]}}]}
execute as @e[tag=assassin,scores={time=200}] at @s run playsound item.armor.equip_diamond hostile @a[distance=..10]

execute as @e[tag=assassin,scores={time=400}] as @s run data merge entity @s {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Assassin\'s Sword","color":"yellow"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:2,UUID:[I;-1042273713,2144028759,-1814818672,-1513346913]}]}},{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Assassin\'s Sword","color":"yellow"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:2,UUID:[I;-1042273713,2144028759,-1814818672,-1513346913]}]}}]}
execute as @e[tag=assassin,scores={time=400}] at @s run playsound item.armor.equip_diamond hostile @a[distance=..10]

execute as @e[tag=assassin,scores={time=599}] at @s run particle sweep_attack ~ ~ ~
execute as @e[tag=assassin,scores={time=599}] at @s run spreadplayers ~ ~ 10 1.0 false @s
execute as @e[tag=assassin,scores={time=600}] as @s run scoreboard players set @s time 0

# Knight of Nocturnus attacks
execute at @a if entity @e[tag=nt_knight,scores={time=100},distance=..20] run summon lightning_bolt
execute as @e[tag=nt_knight,scores={time=100}] if predicate smoges:chance50 run say Glory to Nocturnus!
execute as @e[tag=nt_knight,scores={time=101}] as @s run scoreboard players set @s time 0

# Enchanted Endermen
execute as @e[tag=ench_enderman,scores={time=199..202}] at @s run function smoges:impl/ench_endermen/atk1
execute as @e[tag=ench_enderman,scores={time=220}] run scoreboard players set @s time 0

# Enchanted Blaze
execute as @e[type=blaze,tag=ench_blaze,scores={time=100}] at @s at @e[type=player,distance=..15] run setblock ~ ~ ~ fire keep
execute as @e[type=blaze,tag=ench_blaze,scores={time=100}] run scoreboard players set @s time 0

# REINFORCEMENTS

# Handles reinforcements.
execute as @e[tag=bb_minion,scores={time=200}] as @s run kill @s
execute as @e[tag=ench_endermen_kt,scores={time=400}] as @s run kill @s
execute as @e[tag=qn_minion,scores={time=200}] as @s run kill @s
scoreboard players enable @a uuid1b
execute as @e[tag=eg_mimic,scores={time=300}] as @s run kill @s
execute as @e[tag=eg_horde,scores={time=140}] as @s run kill @s
execute as @e[tag=nt2_minion,scores={time=200}] as @s run kill @s
execute as @e[tag=nt2_mimic,scores={time=400}] as @s run kill @s

# PLAYERS

# Baton of the Blazeborn
execute as @e[tag=botb_fireball,scores={time=60}] as @s run kill @s

# Egg Launcher
execute as @e[type=player,scores={egl_bursts=1..}] at @s anchored eyes run summon egg ^ ^ ^1 {NoGravity:1b,Tags:["egl_egg","projectile"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["egl_explodeme"]}]}
execute as @e[tag=egl_egg,scores={time=60}] at @s run function smoges:impl/egg_launcher/explode
execute as @e[tag=egl_egg] at @s unless block ^ ^ ^1 air run function smoges:impl/egg_launcher/explode
execute as @e[tag=egl_egg] at @s if entity @e[type=!#smoges:nonmob,distance=0..1] run function smoges:impl/egg_launcher/explode
execute as @e[tag=egl_egg,scores={time=25..}] at @s if entity @e[type=player,tag=!egl_firing,distance=0..1] run function smoges:impl/egg_launcher/explode

execute as @e[type=armor_stand,tag=egl_explodeme,predicate=!smoges:is_egl_projectile] run function smoges:impl/egg_launcher/explode

tag @e[type=player,scores={egl_bursts=..0},tag=egl_firing] remove egl_firing