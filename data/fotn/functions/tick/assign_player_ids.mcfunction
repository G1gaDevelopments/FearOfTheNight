# Gives a player a global player ID and marker storage for easy reference.
# This is used because getting player scores is faster than player NBTs.
# @s - the player who wants an ID

# Gives the ID to player
scoreboard players operation @s player_id = $currentID player_id
scoreboard players add $currentID player_id 1