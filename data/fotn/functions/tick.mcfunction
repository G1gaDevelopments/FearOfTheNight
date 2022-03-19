# Sub-functions for handling more complex stuffs
function fotn:tick/mob_scan
function fotn:tick/on_hurt
function fotn:tick/custom_attacks
execute as @a[scores={coas=1..}] run function fotn:tick/on_coas
function fotn:tick/action_bars
function fotn:tick/cblock_handler
#function fotn:tick/ccraft_handler
function fotn:tick/nt_phase_handler
function fotn:tick/projectile_handler
execute as @e[type=area_effect_cloud,tag=raycast,tag=!rcs_rotated] at @s run function fotn:impl/util/raycast_rotator
execute as @e[type=area_effect_cloud,tag=raycast,tag=rcs_rotated] at @s run function fotn:impl/util/raycast_assigner
function fotn:tick/offhand_checks

# Increment timers
scoreboard players add @e[type=!#fotn:nonmob] time 1
scoreboard players add @e[type=#fotn:tick_despite_nonmob] time 1
scoreboard players remove @e[tag=blazeborn,type=wither_skeleton,scores={blazeborn_atk=1..}] blazeborn_atk 1
scoreboard players remove @e[tag=nocturnus,type=phantom,scores={nocturnus_p2_atk=1..}] nocturnus_p2_atk 1
scoreboard players remove @e[tag=queen,type=stray,scores={queen_atk=1..}] queen_atk 1
scoreboard players remove @e[tag=leviathan,type=giant,scores={levi_atk=1..}] levi_atk 1
scoreboard players remove @e[tag=egglord,type=skeleton,scores={egglord_atk=1..}] egglord_atk 1
scoreboard players remove @e[tag=egglord,type=skeleton] el_asb_cooldown 1
scoreboard players remove @a botb_cooldown 1
scoreboard players remove @a rgs_cooldown 1
scoreboard players remove @a qst_cooldown 1
scoreboard players remove @a egl_cooldown 1
scoreboard players remove @a egl_bursts 1

##### START OF OPTIMIZATION SECTION

# Gives player IDs
execute as @a unless score @s player_id = @s player_id run function fotn:tick/assign_player_ids

# Detect various events
execute as @a run function fotn:on_event/_event_handlers/item_switch_handler
execute as @a[advancements={fotn:util/on_inventory_change=true}] run function fotn:on_event/_event_handlers/inventory_change_handler
execute as @e[type=glow_item_frame,tag=advanced_forge] run function fotn:on_event/_event_handlers/advforge_change_handler

##### END OF OPTIMIZATION SECTION

# Kills the invisible mounts/riders that alter mob AI
kill @e[type=husk,tag=angry_bull,predicate=!fotn:is_riding_angry_bull]
kill @e[type=phantom,tag=blazeborn,predicate=!fotn:is_blazeborn_mount]
kill @e[type=husk,tag=lv_rider,predicate=!fotn:is_leviathan_rider]

# Display bossbars
bossbar set blazeborn players @a
bossbar set blazeborn max 150
bossbar set queen players @a
bossbar set queen max 130
bossbar set leviathan players @a
bossbar set leviathan max 400
bossbar set egglord players @a
bossbar set egglord max 500

# Increment bossbars
execute store result bossbar blazeborn value as @e[tag=blazeborn,type=wither_skeleton,limit=1] run data get entity @s Health
execute unless entity @e[tag=blazeborn,type=wither_skeleton] run bossbar set blazeborn visible false
execute store result bossbar nocturnus value as @e[tag=nocturnus_phase2,type=phantom,limit=1] run data get entity @s Health
execute unless entity @e[tag=nocturnus_phase2,type=phantom] run bossbar set nocturnus visible false
execute store result bossbar queen value as @e[tag=queen,type=stray,limit=1] run data get entity @s Health
execute unless entity @e[tag=queen,type=stray] run bossbar set queen visible false
execute store result bossbar leviathan value as @e[tag=leviathan,type=giant,limit=1] run data get entity @s Health
execute unless entity @e[tag=leviathan,type=giant] run bossbar set leviathan visible false
execute store result bossbar egglord value as @e[tag=egglord,type=skeleton,limit=1] run data get entity @s Health
execute unless entity @e[tag=egglord,type=skeleton] run bossbar set egglord visible false

# Allows it to be daytime again once Nocturnus has been killed.
execute unless entity @e[tag=nocturnus] run gamerule doDaylightCycle true

# Allows the sun to set on the British Empire again once Elizabeth has been killed, and fills everyone's Satchels.
execute unless entity @e[tag=queen] run gamerule doDaylightCycle true

# Detects summoning runes/items near summoning altars.
execute as @e[type=glow_item_frame,tag=bb_spawner] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:quartz",tag:{CustomModelData:6164011},Count:1b},OnGround:1b},distance=..2] run function fotn:impl/blazeborn/summon_seq
execute as @e[type=glow_item_frame,tag=lv_spawner] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:quartz",tag:{CustomModelData:6164013},Count:1b},OnGround:1b},distance=..2] run function fotn:impl/leviathan/summon_seq
execute as @e[type=glow_item_frame,tag=eg_spawner] at @s if entity @e[type=egg,nbt={Item:{id:"minecraft:egg",tag:{CustomModelData:6164015}}},distance=..2] if predicate fotn:rng/chance25 run function fotn:impl/egglord/summon_seq

# Counts ammo items in everyones' inventory (for Egg Launcher and Queen's Satchel)
execute as @a store result score @s egl_ammo run clear @s egg 0
execute as @a store result score @s qst_totems run clear @s totem_of_undying 0

# Hacky workaround for Nocturnus phase 2 bossbar not working (?)
execute if entity @e[type=phantom,tag=nocturnus_phase2] run bossbar set nocturnus visible true