# Called when a player is holding air.
# @s - the player
say h
tag @s remove holding_item
data modify storage fotn:inventory_cache HeldItem set value {id:"minecraft:air",Count:1b}
function fotn:on_event/item_switch/main