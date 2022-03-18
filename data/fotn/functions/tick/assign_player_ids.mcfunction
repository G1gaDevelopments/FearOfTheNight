# Gives a player a global player ID and marker storage for easy reference.
# This is used because getting player scores is faster than player NBTs.
# @s - the player who wants an ID

# Gives the ID to player
scoreboard players operation @s player_id = $currentID player_id
scoreboard players add $currentID player_id 1

# Summons and assigns ID to a marker
execute at @s run summon marker ~ ~ ~ {Tags:["no_id"]}
execute at @s as @e[type=marker,limit=1,tag=no_id] store result entity @s data.ID int 1 run scoreboard players get @p player_id
execute at @s as @e[type=marker,limit=1,tag=no_id,sort=nearest] run tag @s remove no_id