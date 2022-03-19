# Scoreboards for various util functions.
tellraw @a {"text":"Initialising utility scoreboards...","color":"dark_gray"}

scoreboard objectives add item_change_compare dummy
scoreboard objectives add player_id dummy
execute unless score $currentID player_id = $currentID player_id run scoreboard players set $currentID player_id 1

# Forceloads 0 0 chunk (trolling)
forceload add 0 0