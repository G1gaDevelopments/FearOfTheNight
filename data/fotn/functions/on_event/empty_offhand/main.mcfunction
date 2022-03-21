# Called when a player has nothing in their offhand.
# @s - the player
tag @s remove holding_offhand
data remove storage fotn:inventory_cache OffhandItem
function fotn:on_event/offhand_switch/main
say m