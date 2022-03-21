say item switch
execute unless predicate fotn:util/is_holding_air run tag @s add holding_item
execute at @s as @e[type=marker,tag=!no_id] run function fotn:on_event/item_switch/update_score