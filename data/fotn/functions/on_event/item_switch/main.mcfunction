# Run as all players who have changed the item they are currently holding.
# @s - the player who changed their item
execute unless predicate fotn:util/is_holding_air run tag @s add holding_item

# Assigns held_fotn_item score if the player is holding an item with mainhand (rightclick) abilities.
execute unless predicate fotn:util/is_holding_mainhand_ability_item run scoreboard players set @s held_fotn_item 0
execute if predicate fotn:util/is_holding_mainhand_ability_item store result score @s held_fotn_item run data get entity @s SelectedItem.tag.FotnID