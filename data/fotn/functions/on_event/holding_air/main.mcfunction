# Called when a player is holding air.
# @s - the player
say h
tag @s remove holding_item
data remove storage fotn:inventory_cache HeldItem
function fotn:on_event/item_switch/main