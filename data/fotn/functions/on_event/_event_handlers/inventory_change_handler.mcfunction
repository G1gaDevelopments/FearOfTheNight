# Run as all players when they change their inventory.
# @s - a player who has changed their inventory

# Offhand
execute if predicate fotn:util/has_empty_offhand if entity @s[tag=holding_offhand] run function fotn:on_event/empty_offhand/main
execute unless predicate fotn:util/has_empty_offhand store success score @s item_change_compare run data modify storage fotn:inventory_cache OffhandItem set from entity @s Inventory[{Slot:-106b}]
execute at @s if score @s item_change_compare matches 1 run function fotn:on_event/offhand_switch/main

# Misc inventory change
execute store success score @s item_change_compare run data modify storage fotn:inventory_cache Inventory set from entity @s Inventory
execute at @s if score @s item_change_compare matches 1 run function fotn:on_event/inventory_change/main

advancement revoke @s only fotn:util/on_inventory_change