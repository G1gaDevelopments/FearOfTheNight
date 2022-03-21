# Called when a player has nothing in their offhand.
# @s - the player
tag @s remove holding_offhand
data modify storage fotn:inventory_cache OffhandItem set value {id:"minecraft:air",Count:1b}
function fotn:on_event/offhand_switch/main
say m