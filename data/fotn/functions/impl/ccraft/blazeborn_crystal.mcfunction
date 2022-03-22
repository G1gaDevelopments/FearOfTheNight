execute if entity @p[scores={tome_of_knowledge=1..}] run playsound minecraft:entity.iron_golem.repair master @a
execute if entity @p[scores={tome_of_knowledge=1..}] run data modify block ~ ~ ~ Items set value []
execute if entity @p[scores={tome_of_knowledge=1..}] run loot replace block ~ ~ ~ container.4 loot fotn:admin/blazeborn_crystal