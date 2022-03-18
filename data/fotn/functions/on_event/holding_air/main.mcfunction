# Called when a player is holding air.
# @s - the player

tag @s remove holding_item
data remove storage fotn:holding HeldItem
function fotn:on_event/on_item_switch