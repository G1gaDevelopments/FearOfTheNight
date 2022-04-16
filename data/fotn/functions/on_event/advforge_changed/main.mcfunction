# Blazeborn Summoning Crystal
execute at @s if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:blaze_powder",Count:8b}] if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:blaze_rod",Count:8b}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:blaze_powder",Count:8b}] if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:blaze_rod",tag:{Enchantments:[{}],FotnID:9,display:{Name:'{"text":"Enchanted Blaze Rod","color":"aqua","italic":false}'}},Count:4b}] if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:wither_skeleton_skull",Count:1b}] if data block ~ ~ ~ Items[{Slot:5b,id:"minecraft:blaze_rod",tag:{Enchantments:[{}],FotnID:9,display:{Name:'{"text":"Enchanted Blaze Rod","color":"aqua","italic":false}'}},Count:4b}] if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:blaze_powder",Count:8b}] if data block ~ ~ ~ Items[{Slot:7b,id:"minecraft:blaze_rod",Count:8b}] if data block ~ ~ ~ Items[{Slot:8b,id:"minecraft:blaze_powder",Count:8b}] run function fotn:impl/block/advanced_forge/crafting/blazeborn_crystal

# Leviathan Summoning Crystal
execute at @s if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:netherite_scrap",Count:1b}] if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:rotten_flesh",Count:32b}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:netherite_scrap",Count:1b}] if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:rotten_flesh",Count:32b}] if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:iron_nugget",Count:16b}] if data block ~ ~ ~ Items[{Slot:5b,id:"minecraft:rotten_flesh",Count:32b}] if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:netherite_scrap",Count:1b}] if data block ~ ~ ~ Items[{Slot:7b,id:"minecraft:rotten_flesh",Count:32b}] if data block ~ ~ ~ Items[{Slot:8b,id:"minecraft:netherite_scrap",Count:1b}] run function fotn:impl/block/advanced_forge/crafting/levi_crystal

# Egg of Reincarnaton
execute at @s if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:experience_bottle",Count:4b}] if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:egg",Count:4b}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:experience_bottle",Count:4b}] if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:egg",Count:4b}] if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:emerald",Count:16b}] if data block ~ ~ ~ Items[{Slot:5b,id:"minecraft:egg",Count:4b}] if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:experience_bottle",Count:4b}] if data block ~ ~ ~ Items[{Slot:7b,id:"minecraft:egg",Count:4b}] if data block ~ ~ ~ Items[{Slot:8b,id:"minecraft:experience_bottle",Count:4b}] run function fotn:impl/block/advanced_forge/crafting/egg_of_reincarnation