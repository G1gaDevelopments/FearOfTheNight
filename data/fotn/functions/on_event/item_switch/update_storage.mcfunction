# Updates the storage marker of a given player.
# @s - every marker that has an ID
# @p - the player this is executed at and by

execute store result score @s player_id run scoreboard players get @p player_id
execute if score @s player_id = @p player_id run data modify entity @s data.HandItem set from entity @p SelectedItem