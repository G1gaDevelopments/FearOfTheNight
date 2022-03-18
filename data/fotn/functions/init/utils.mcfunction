# Scoreboards for various util functions.
tellraw @a {"text":"Initialising utility scoreboards...","color":"dark_gray"}

scoreboard objectives add held_item dummy
scoreboard objectives add player_id dummy
execute unless score $currentID player_id = $currentID player_id run scoreboard players set $currentID player_id 1