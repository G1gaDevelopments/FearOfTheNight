say offhand switch
execute unless predicate fotn:util/has_empty_offhand run tag @s add holding_offhand
execute at @s as @e[type=marker,tag=!no_id] run function fotn:on_event/offhand_switch/update_score