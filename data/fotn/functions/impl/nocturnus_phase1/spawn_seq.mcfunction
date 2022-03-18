# Spawns in towers and commanders for Nocturnus' first phase.
execute at @s run summon armor_stand ~ ~10 ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["nt1_towerhere"]}
execute at @s run summon armor_stand ~ ~10 ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["nt1_towerhere"]}
execute at @s run summon armor_stand ~ ~10 ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["nt1_towerhere"]}
execute at @s run summon armor_stand ~ ~10 ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["nt1_towerhere"]}
execute at @s run summon armor_stand ~ ~10 ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["nt1_towerhere"]}

# Randomly spread towers
spreadplayers ~ ~ 10 40 false @e[type=armor_stand,tag=nt1_towerhere]

execute as @e[type=armor_stand,tag=nt1_towerhere] at @s run setblock ~ ~ ~ structure_block[mode=load]{name:"fotn:nt_tower",posX:-5,posY:0,posZ:-5,rotation:"NONE",mirror:"NONE",mode:"LOAD"} destroy

# Random tower rotation
execute as @e[type=armor_stand,tag=nt1_towerhere] at @s run say test
execute as @e[type=armor_stand,tag=nt1_towerhere] at @s if predicate fotn:rng/chance10 run data merge block ~ ~ ~ {mirror:"FRONT_BACK"}
execute as @e[type=armor_stand,tag=nt1_towerhere] at @s if predicate fotn:rng/chance10 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT"}

# Spawn in structure and ad crystal
execute as @e[type=armor_stand,tag=nt1_towerhere] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=nt1_towerhere] at @s run fill ~ ~ ~ ~ ~1 ~ obsidian
execute as @e[type=armor_stand,tag=nt1_towerhere] at @s run summon end_crystal ~ ~17 ~ {Glowing:1b,ShowBottom:0b,Tags:["nt1_crystal"]}
execute as @e[type=armor_stand,tag=nt1_towerhere] at @s run fill ~-1 ~16 ~-1 ~1 ~18 ~1 blue_stained_glass
kill @e[type=armor_stand,tag=nt1_towerhere]

# Positioning for commanders
execute at @s run summon armor_stand ~ ~15 ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["nt1_spawnhere"],NoGravity:1b}

execute at @e[type=armor_stand,tag=nt1_spawnhere] run function fotn:spawn/mob/commander_nocturnus
execute at @e[type=armor_stand,tag=nt1_spawnhere] run function fotn:spawn/mob/commander_nocturnus
execute at @e[type=armor_stand,tag=nt1_spawnhere] run function fotn:spawn/mob/commander_nocturnus
execute at @e[type=armor_stand,tag=nt1_spawnhere] run function fotn:spawn/mob/commander_nocturnus
execute at @e[type=armor_stand,tag=nt1_spawnhere] run function fotn:spawn/mob/commander_nocturnus

execute at @e[type=armor_stand,tag=nt1_spawnhere] run function fotn:spawn/mob/nocturnus_boss_phase1
execute as @e[type=armor_stand,tag=nt1_spawnhere] run kill @s
bossbar set nocturnus_phase1 visible true