# Run as all glow item frames that spawn on top of Advanced Forges.
# @s - glow item frame
execute at @s store success score @s item_change_compare run data modify storage fotn:dropper_cache Slots set from block ~ ~ ~ Items
execute at @s if score @s item_change_compare matches 1 run function fotn:on_event/advforge_changed/main