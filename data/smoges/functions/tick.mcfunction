# Sub-functions for handling more precise stuffs
function smoges:tick/mob_scan
function smoges:tick/on_hurt
execute as @e[tag=!not_rotated,tag=nt_raycast,type=area_effect_cloud] at @s run function smoges:impl/nocturnus/raycasting_handler
execute as @e[tag=!not_rotated,tag=qn_raycast,type=area_effect_cloud] at @s run function smoges:impl/queen/raycast_handler
function smoges:tick/custom_attacks
execute as @a[scores={coas=1..}] run function smoges:tick/on_coas
function smoges:tick/action_bars
function smoges:tick/cblock_handler

# Increment timers
scoreboard players add @e[type=!#smoges:nonmob] time 1
scoreboard players add @e[type=#smoges:tick_despite_nonmob] time 1
scoreboard players remove @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=1..}] blazeborn_atk 1
scoreboard players remove @e[tag=nocturnus,type=phantom,scores={nocturnus_atk=1..}] nocturnus_atk 1
scoreboard players remove @e[tag=queen,type=stray,scores={queen_atk=1..}] queen_atk 1
scoreboard players remove @e[tag=leviathan,type=giant,scores={levi_atk=1..}] levi_atk 1
scoreboard players remove @a botb_cooldown 1
scoreboard players remove @a rgs_cooldown 1
scoreboard players remove @a qst_cooldown 1

# Kills the invisible mounts/riders that alter mob AI
kill @e[type=husk,tag=angry_bull,predicate=!smoges:is_riding_angry_bull]
kill @e[type=phantom,tag=blazeborn,predicate=!smoges:is_blazeborn_mount]
kill @e[type=ender_pearl,tag=thrown_ench_epearl,scores={time=50..}]
kill @e[type=husk,tag=lv_rider,predicate=!smoges:is_leviathan_rider]

# Display bossbars
bossbar set blazeborn players @a
bossbar set blazeborn max 150
bossbar set nocturnus players @a
bossbar set nocturnus max 300
bossbar set queen players @a
bossbar set queen max 130
bossbar set leviathan players @a
bossbar set leviathan max 400

# Increment bossbars
execute store result bossbar blazeborn value as @e[tag=blazeborn,type=wither_skeleton,limit=1] run data get entity @s Health
execute unless entity @e[tag=blazeborn,type=wither_skeleton] run bossbar set blazeborn visible false
execute store result bossbar nocturnus value as @e[tag=nocturnus,type=phantom,limit=1] run data get entity @s Health
execute unless entity @e[tag=nocturnus,type=phantom] run bossbar set nocturnus visible false
execute store result bossbar queen value as @e[tag=queen,type=stray,limit=1] run data get entity @s Health
execute unless entity @e[tag=queen,type=stray] run bossbar set queen visible false
execute store result bossbar leviathan value as @e[tag=leviathan,type=giant,limit=1] run data get entity @s Health
execute unless entity @e[tag=leviathan,type=giant] run bossbar set leviathan visible false

# Allows it to be daytime again once Nocturnus has been killed.
execute unless entity @e[tag=nocturnus] run gamerule doDaylightCycle true

# Allows the sun to set on the British Empire again once Elizabeth has been killed, and fills everyone's Satchels.
execute unless entity @e[tag=queen] run gamerule doDaylightCycle true
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Queen\'s Satchel","color":"green","bold":true,"italic":true}'},CustomModelData:6164006,Enchantments:[{}]}}]},tag=!held_satchel] run scoreboard players set @s qst_uses 10
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Queen\'s Satchel","color":"green","bold":true,"italic":true}'},CustomModelData:6164006,Enchantments:[{}]}}]},tag=!held_satchel] run tag @s add held_satchel

# refilling for Satchel
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164006}}}] run function smoges:impl/queen_bag/refill

# execute as @e[type=player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164006}}}] at @s run title @s actionbar {"score":{"name":"@s","objective":"qst_uses"}}