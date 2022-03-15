# The horde
execute as @s[scores={egglord_atk=85}] if predicate fotn:chance50 run say ATTTAAAAAAAACCCKKKKKKKKK
execute as @s[scores={egglord_atk=70..85}] at @s anchored eyes if predicate fotn:chance25 run summon zombie ^ ^ ^-1 {Health:15f,Tags:["eg_horde"],CustomName:'{"text":"Chicken Horde Solider","color":"yellow"}',CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_Chicken"}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.follow_range",Base:140}],DeathLootTable:"minecraft:entities/chicken"}

execute as @s[scores={egglord_atk=70..85}] at @s anchored eyes if predicate fotn:chance25 run summon skeleton ^ ^ ^-1 {Health:15f,Tags:["eg_horde","scanned"],CustomName:'{"text":"Chicken Horde Archer","color":"yellow"}',CustomNameVisible:1b,HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s},{id:"minecraft:punch",lvl:3s},{id:"minecraft:flame",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_Chicken"}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.follow_range",Base:140}],DeathLootTable:"minecraft:entities/chicken"}

execute as @s[scores={egglord_atk=70}] at @s anchored eyes run summon wither_skeleton ^ ^ ^-1 {Health:15f,Tags:["eg_horde"],CustomName:'{"text":"Chicken Horde Paladin","color":"yellow"}',CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_Chicken"}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.follow_range",Base:140}],DeathLootTable:"minecraft:entities/chicken"}

execute as @s[scores={egglord_atk=70}] at @s anchored eyes run summon pillager ^ ^ ^-1 {Health:15f,Tags:["eg_horde","scanned"],CustomName:'{"text":"Chicken Horde Bombardier","color":"yellow"}',CustomNameVisible:1b,HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2b,Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16776960],FadeColors:[I;16776632]}]}}},{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b}],Charged:1b}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16776632}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_Chicken"}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:"generic.max_health",Base:15},{Name:"generic.follow_range",Base:140}],DeathLootTable:"minecraft:entities/chicken"}