# A fucking meteor shower, fuck you
execute as @s[scores={blazeborn_atk=80}] if predicate fotn:rng/chance50 run say Fire and brimstone.
execute as @s[scores={blazeborn_atk=80}] at @r[distance=..45] run summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,DropItem:0b,Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Tags:["bb_meteor"]}]}