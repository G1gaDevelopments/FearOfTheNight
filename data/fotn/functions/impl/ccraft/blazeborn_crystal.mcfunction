execute if entity @p[scores={tome_of_knowledge=1..}] run playsound minecraft:entity.iron_golem.repair master @a
execute if entity @p[scores={tome_of_knowledge=1..}] run data modify block ~ ~ ~ Items set value [{Slot:4b,id:"minecraft:quartz",tag:{display:{Name:'{"text":"Blazeborn Summoning Crystal","color":"gold","bold":false,"italic":false}',Lore:['[{"text":"Throw me onto a","color":"dark_gray","italic":false},{"text":" Blazeborn Spawning Altar","color":"gold","italic":false}]']},CustomModelData:6164011},Count:1b}]