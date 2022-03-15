# Various commands relating to checking players with items in their offhand

# Queen's Satchel healing.
execute as @e[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164006}}]},scores={qst_cooldown=..0}] run function fotn:impl/queen_bag/consume
execute as @e[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6164006}}]}] run function fotn:impl/util/swap_offhand

# Tome of Knowledge
# T1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:book",tag:{tk_tier:1}}]},scores={tome_of_knowledge=0}] run function fotn:impl/tome_of_knowledge/t1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:book",tag:{tk_tier:1}}]}] unless score @s tome_of_knowledge = @s tome_of_knowledge run function fotn:impl/tome_of_knowledge/t1
# T2
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:book",tag:{tk_tier:2}}]},scores={tome_of_knowledge=1}] run function fotn:impl/tome_of_knowledge/t2
