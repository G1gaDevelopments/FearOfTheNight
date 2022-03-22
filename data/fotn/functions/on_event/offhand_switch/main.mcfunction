# Run as all players who have changec the item in their offhand.
# @s - the player who changed the item in their offhand
execute unless predicate fotn:util/has_empty_offhand run tag @s add holding_offhand

# Assigns offhand_fotn_item score if the player is holding an item with mainhand (rightclick) abilities.
execute unless predicate fotn:util/is_holding_offhand_ability_item run scoreboard players set @s offhand_fotn_item 0
execute if predicate fotn:util/is_holding_offhand_ability_item store result score @s offhand_fotn_item run data get entity @s Inventory[{Slot:-106b}].tag.FotnID

# Records tk_tier NBT tag of item held in offhand.
execute if score @s offhand_fotn_item matches 5 store result score @s offhand_tk_tier run data get entity @s Inventory[{Slot:-106b}].tag.tk_tier