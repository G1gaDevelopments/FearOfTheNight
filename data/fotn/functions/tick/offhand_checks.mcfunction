# Various commands relating to checking players with items in their offhand

# Queen's Satchel healing.
execute as @a[scores={offhand_fotn_item=3,qst_cooldown=..0}] run function fotn:impl/queen_bag/consume
execute as @a[scores={offhand_fotn_item=3}] run function fotn:impl/util/swap_offhand

# Tome of Knowledge
# T1
execute as @a[scores={tome_of_knowledge=0,offhand_fotn_item=5,offhand_tk_tier=1}] run function fotn:impl/tome_of_knowledge/t1
execute as @a[scores={tome_of_knowledge=0,offhand_fotn_item=5,offhand_tk_tier=1}] unless score @s tome_of_knowledge = @s tome_of_knowledge run function fotn:impl/tome_of_knowledge/t1
# T2
execute as @a[scores={tome_of_knowledge=1,offhand_fotn_item=5,offhand_tk_tier=2}] run function fotn:impl/tome_of_knowledge/t2
