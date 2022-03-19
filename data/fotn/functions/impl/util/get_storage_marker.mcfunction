# Gets the marker associated with this player.
# @p - the player in question
# @s - every marker being loaded
execute store result score @s player_id run scoreboard players get @p player_id
execute if score @s player_id = @p player_id run tag @s add assoc_storage_marker